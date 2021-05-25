#include <stdio.h>

#include "wdl/load_npc.h"

/* See load_item.h */
int load_npcs(obj_t *doc, game_t *g)
{
    // get and verify NPCS object
    obj_t *npcs_obj = obj_get_attr(doc, "NPCS", false);
    if (npcs_obj == NULL) {
        fprintf(stderr, "NPCS not found\n");
        return FAILURE;
    }
    else if (list_type_check(npcs_obj, npc_type_check) != SUCCESS) {
        fprintf(stderr, "NPCS fail type checking\n");
        return FAILURE;
    }

    // iterate through hash table of NPCs
    obj_t *curr, *tmp;
    HASH_ITER(hh, npcs_obj->data.obj.attr, curr, tmp)
    {
        // get attributes
        char *id = curr->id;
        char *short_desc = obj_get_str(curr, "short_desc");
        char *long_desc = obj_get_str(curr, "long_desc");

        // create new NPC
        npc_t *npc = npc_new(id, short_desc, long_desc, NULL, NULL, 0);

        // load NPC's inventory, if any
        obj_t *inventory_lst_obj;
        if ((inventory_lst_obj = obj_get(curr, "inventory")) != NULL) {
            if (load_npc_inventory(inventory_lst_obj, npc, g) != SUCCESS) {
                fprintf(stderr, "Could not load NPC's inventory. NPC: %s\n",
                        npc->npc_id);
                return FAILURE;
            }
        }

        // load dialogue
        if (load_dialogue(curr, npc) == FAILURE) {
            fprintf(stderr, "Dialogue was not loaded properly\n");
            return FAILURE;
        }

        add_npc_to_game(g, npc);

        // add NPC to the room they are assigned
        // to do
    }

    return SUCCESS;
}

/* See load_npc.h */
int load_npc_inventory(obj_t *inventory_lst_obj, npc_t *npc, game_t *g)
{
    char *item_id;
    item_t *item;
    obj_t *curr;

    // verify the inventory list's attributes
    if (list_type_check(inventory_lst_obj, inventory_type_check) != SUCCESS) {
        fprintf(stderr, "NPC's inventory fails type checking. NPC: %s\n",
                npc->npc_id);
        return FAILURE;
    }

    // add items to NPC's inventory
    DL_FOREACH(inventory_lst_obj->data.lst, curr)
    {
        item_id = obj_get_str(curr, "item_id");

        item = get_item_from_game(g, item_id);
        if (item == NULL) {
            fprintf(stderr, "Failed to add item to NPC. Item %s could not be "
                    "found. NPC: %s\n", item_id, npc->npc_id);
            return FAILURE;
        }

        if (add_item_to_npc(npc, item) != SUCCESS) {
            fprintf(stderr, "Failed to add item %s to NPC: %s\n", item_id,
                    npc->npc_id);
            return FAILURE;
        }
    }

    return SUCCESS;
}

/* See load_npc.h */
int load_dialogue(obj_t *npc_obj, npc_t *npc)
{
    convo_t *convo = convo_new();

    // get and verify the dialogue object
    obj_t *dialogue_obj = obj_get_attr(npc_obj, "dialogue", false);
    if (dialogue_obj == NULL) {
        fprintf(stderr, "dialogue could not be found for NPC: %s\n",
                npc->npc_id);
        return FAILURE;
    }
    else if (dialogue_type_check(dialogue_obj) == FAILURE) {
        fprintf(stderr, "Dialogue object failed typechecking, or the two "
                "required attributes (nodes, edges) are missing. NPC: %s\n",
                npc->npc_id);
        return FAILURE;
    }

    obj_t *nodes_obj = obj_get_attr(dialogue_obj, "nodes", false);
    obj_t *edges_obj = obj_get_attr(dialogue_obj, "edges", false);
    char *id, *npc_dialogue;
    char *quip, *from_id, *to_id;
    obj_t *curr;
    obj_t *actions_obj;

    // build nodes
    DL_FOREACH(nodes_obj->data.lst, curr)
    {
        id = obj_get_str(curr, "id");
        npc_dialogue = obj_get_str(curr, "npc_dialogue");

        if (add_node(convo, id, npc_dialogue) != SUCCESS) {
            fprintf(stderr, "Could not add node with ID: %s. NPC: %s\n", id,
                    npc->npc_id);
            return FAILURE;
        }

        // load node actions, if any
        if ((actions_obj = obj_get(curr, "actions")) != NULL) {
            if (load_node_actions(actions_obj, convo, id, npc) != SUCCESS) {
                fprintf(stderr, "Could not add actions to node with ID: %s. "
                        "NPC: %s\n", id, npc->npc_id);
                return FAILURE;
            }
        }
    }

    // build edges
    DL_FOREACH(edges_obj->data.lst, curr)
    {
        quip = obj_get_str(curr, "quip");
        from_id = obj_get_str(curr, "from_id");
        to_id = obj_get_str(curr, "to_id");

        if (add_edge(convo, quip, from_id, to_id, NULL) != SUCCESS) {
            fprintf(stderr, "Could not add edge with quip: %s. NPC: %s\n",
                    quip, npc->npc_id);
            return FAILURE;
        }
    }

    // assign the conversation to the NPC
    if (add_convo_to_npc(npc, convo) != SUCCESS) {
        fprintf(stderr, "Could not add convo to NPC: %s\n", npc->npc_id);
        return FAILURE;
    }

    return SUCCESS;
}

/* See load_npc.h */
int load_node_actions(obj_t *actions_obj, convo_t *convo, char *node_id,
                      npc_t *npc)
{
    char *action, *action_id;
    obj_t *curr;

    // verify the node action list's attributes
    if (list_type_check(actions_obj, node_action_type_check) != SUCCESS) {
        fprintf(stderr, "Node actions fail type checking. Node: %s. NPC: %s\n",
                node_id, npc->npc_id);
        return FAILURE;
    }

    // add actions to node
    DL_FOREACH(actions_obj->data.lst, curr)
    {
        action = obj_get_str(curr, "action");
        action_id = obj_get_str(curr, "action_id");

        // action-specific checks, function calls
        if (strcmp(action, "GIVE_ITEM") == 0) {
            if (item_in_npc_inventory(npc, action_id) == false) {
                fprintf(stderr, "[Node actions] The item you intend to give "
                        "to the player is missing from the NPC's inventory. "
                        "Node: %s. NPC: %s\n", node_id, npc->npc_id);
                return FAILURE;
            }
            add_give_item(convo, node_id, action_id);
        }
        else if (strcmp(action, "TAKE_ITEM") == 0) {
            add_take_item(convo, node_id, action_id);
        }
        else {
            fprintf(stderr, "Specified action not currently supported. "
                    "Action: %s. Node ID: %s\n", action, node_id);
            return FAILURE;
        }
    }

    return SUCCESS;
}
