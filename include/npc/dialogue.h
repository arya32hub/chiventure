#ifndef _DIALOGUE_H
#define _DIALOGUE_H

#include "game-state/game_state_common.h"

#define MAX_DIA_LEN 500
#define MAX_QUIP_LEN 250
#define MAX_NODE_ID_LEN 50


/**********************************************
 *       DIALOGUE STRUCTURE DEFINITIONS       *
 **********************************************/

/* Forward Declaration */
typedef struct node node_t;

/* An edge between two nodes. Each edge represents a dialogue option available
 * to the player at that node.
 * 
 * Includes:
 *  - quip: dialogue option text
 *  - from: source node
 *  - to: destination node
 */
typedef struct edge {
    char *quip;
    node_t *from, *to;
} edge_t;

/* A doubly-linked list containing edges and their "option numbers." The
 * "option number" (1, 2, 3, ...) labels the edges numerically.
 *
 * Includes:
 *  - option_number: an edge's number label
 *  - edge: the edge
 *  - next, prev: next and previous list elements
 */
typedef struct edge_list {
    int option_number;
    edge_t *edge;
    struct edge_list *next, *prev;
} edge_list_t;

/* A scene in a conversation.
 *
 * Includes:
 *  - node_id: the node's "name"
 *  - npc_dialogue: what the NPC says on arriving at the node
 *  - num_edges: number of possible responses
 *  - edges: possible responses
 */
typedef struct node {
    char *node_id;
    char *npc_dialogue;
    int num_edges;
    edge_list_t *edges;
} node_t;

/* A doubly-linked list containing nodes.
 *
 * Includes:
 *  - node: a node
 *  - next, prev: next and previous list elements
 */
typedef struct node_list {
    node_t *node;
    struct node_list *next, *prev;
} node_list_t;

/* A struct representing a conversation.
 *
 * Includes:
 *  - num_nodes: the total number of nodes
 *  - all_nodes: list of all nodes
 *  - all_edges: list of all edges
 *  - cur_node: current node (to run the conversation)
 */
typedef struct convo {
    int num_nodes;
    node_list_t *all_nodes;
    edge_list_t *all_edges;
    node_t *cur_node;
} convo_t;


/**********************************************
 *        DIALOGUE BUILDING FUNCTIONS         *
 **********************************************/

/* Adds a new node to the conversation.
 *
 * Parameters:
 *  - c: pointer to a convo
 *  - node_id: a string (max. 50 chars) representing the node's "name"
 *  - dialogue: a string (max. 500 chars) representing the NPC's speech at the
 *     node
 *
 * Returns:
 *  - SUCCESS on success, FAILURE if an error occurs
 *  - Possible errors: (1) input strings are too long (assertion error);
 *    (2) a node with the same ID already exists; (3) memory allocation error;
 */
int add_node(convo_t *c, char *node_id, char *npc_dialogue);

/* Adds a new edge to the conversation.
 *
 * Parameters:
 *  - c: pointer to a convo
 *  - quip: a string (max. 250 chars) representing the dialogue option
 *  - from_id: source node's ID
 *  - to_id: destination node's ID
 *
 * Returns:
 *  - SUCCESS on success, FAILURE if an error occurs
 *  - Possible errors: (1) quip is too long; (2) nodes matching from_id and
 *    to_id could not be found; (3) memory allocation error;
 */
int add_edge(convo_t *c, char *quip, char *from_id, char *to_id);


/**********************************************
 *       DIALOGUE EXECUTION FUNCTIONS         *
 **********************************************/

/* Starts a conversation.
 *
 * Parameters:
 *  - c: pointer to a convo
 *
 * Returns:
 *  - A string of NPC dialogue and dialogue options that can be directly
 *    printed by the CLI.
 *  - An RC of: 1 if the conversation has ended (i.e. we have arrived at a
 *    leaf node), or 0 if the conversation is still ongoing.
 */
char *start_conversation(convo_t *c, int *rc);

/* Runs a step of the conversation.
 *
 * Parameters:
 *  - c: pointer to a convo
 *  - input: integer (1, 2, ..., c->cur_node->num_edges)
 *  - rc: pointer to an integer
 *
 * Returns:
 *  - A string of NPC dialogue and dialogue options that can be directly
 *    printed by the CLI.
 *  - An RC of: 1 if the conversation has ended (i.e. we have arrived at a
 *    leaf node), or 0 if the conversation is still ongoing.
 */
char *run_conversation_step(convo_t *c, int input, int *rc);


/**********************************************
 *    STRUCT (INIT, NEW, FREE) FUNCTIONS      *
 **********************************************/

/* Initializes an edge.
 *
 * Parameters:
 *  - e: an edge; must point to already allocated memory
 *  - quip: the dialogue option associated with the edge
 *  - from: source node
 *  - to: destination node
 *
 * Returns:
 *  - SUCCESS on success, FAILURE if an error occurs
 */
int edge_init(edge_t *e, char *quip, node_t *from, node_t *to);

/* Allocates a new edge on the heap.
 * 
 * Parameters:
 *  - quip: the dialogue option associated with the edge
 *  - from: source node
 *  - to: destination node
 * 
 * Returns:
 *  - pointer to the new edge
 */
edge_t *edge_new(char *quip, node_t *from, node_t *to);

/* Frees resources associated with an edge.
 *
 * Parameters:
 *  - e: the edge to be freed
 *
 * Returns:
 *  - SUCCESS if successful, FAILURE if an error occurs
 */
int edge_free(edge_t *e);

/* Initializes a node.
 *
 * Parameters:
 *  - n: a node; must point to already allocated memory
 *  - node_id: the node's "name"
 *  - npc_dialogue: a string representing the NPC's speech at the node
 *
 * Returns:
 *  - SUCCESS on success, FAILURE if an error occurs
 */
int node_init(node_t *n, char *node_id, char *npc_dialogue);

/* Allocates a new node on the heap.
 * 
 * Parameters:
 *  - node_id: the node's "name"
 *  - npc_dialogue: a string representing the NPC's speech at the node
 * 
 * Returns:
 *  - pointer to the new node
 */
node_t *node_new(char *node_id, char *npc_dialogue);

/* Frees resources associated with a node.
 *
 * Parameters:
 *  - n: the node to be freed
 *
 * Returns:
 *  - SUCCESS if successful, FAILURE if an error occurs
 */
int node_free(node_t *n);

/* Initializes a convo.
 *
 * Parameters:
 *  - c: a convo; must point to already allocated memory
 *
 * Returns:
 *  - SUCCESS on success, FAILURE if an error occurs
 */
int convo_init(convo_t *c);

/* Allocates a new convo in the heap.
 * 
 * Returns:
 *  - pointer to the new convo
 */
convo_t *convo_new();

/* Frees resources associated with a convo.
 *
 * Parameters:
 *  - c: the convo to be freed
 *
 * Returns:
 *  - SUCCESS if successful, FAILURE if an error occurs
 */
int convo_free(convo_t *c);

/* Frees an edge list (using macros from common/utlist.h). 
 *
 * Note: free_edges allows you to specify if you want to free the edges along
 *       with each edge list element. This prevents double freeing in certain
 *       cases.
 *
 * Parameters:
 *  - e_lst: the edge list to be freed
 *  - free_edge: true if edges should also be freed
 *
 * Returns:
 *  - SUCCESS if successful, FAILURE if an error occurs
 */
int free_edge_list(edge_list_t *e_lst, bool free_edges);

/* Frees an node list (using macros from common/utlist.h).
 *
 * Note: free_nodes allows you to specify if you want to free the nodes along
 *       with each node list element. This prevents double freeing in certain
 *       cases.
 *
 * Parameters:
 *  - n_lst: the node list to be freed
 *  - free_nodes: true if nodes should also be freed
 *
 * Returns:
 *  - SUCCESS if successful, FAILURE if an error occurs
 */
int free_node_list(node_list_t *n_lst, bool free_nodes);



#endif /* DIALOGUE_H */
