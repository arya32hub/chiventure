#include "game-state/condition.h"
#include "game-state/item.h"
#include "game-state/player.h"


/* see condition.h */
int delete_condition_llist(condition_list_t *conditions)
{
    condition_t *elt, *tmp;
    LL_FOREACH_SAFE(conditions, elt, tmp)
    {
        LL_DELETE(conditions, elt);
        switch (elt->condition_tag)
        {
        case (ATTRIBUTE):
            free(elt->cond.attr_type);
            break;
        case (INVENTORY):
            free(elt->cond.inven_type);
            break;
        }
        free(elt);
    }
    return SUCCESS;
}


/* see game_action.h */
condition_t *attribute_condition_new(item_t *item_to_modify, attribute_t *attribute,
                                                 attribute_value_t new_value)
{
    if (item_to_modify == NULL || attribute == NULL)
    {
        return NULL;
    }

    attribute_condition_t *new_condition = malloc(sizeof(game_action_attribute_condition_t));
    new_condition->item = item_to_modify;
    new_condition->attribute_to_check = attribute;
    new_condition->expected_value = new_value;

    condition_t *condition_wrapper = malloc(sizeof(game_action_condition_t));
    condition_wrapper->condition.attr_type = new_condition;
    condition_wrapper->condition_tag = ATTRIBUTE;

    return condition_wrapper;
}

/* helper for check_condition */
bool check_attribute_condition(attribute_condition_t *condition)
{
    //check if NULL attribute, return true if true
    attribute_t *actual_attribute = condition->attribute_to_check;
    if (actual_attribute == NULL)
    {
        return true;
    }

    switch (actual_attribute->attribute_tag)
    {
    case (DOUBLE):
        if (actual_attribute->attribute_value.double_val ==
            condition->expected_value.double_val)
        {
            return true;
        }
        break;
    case (BOOLE):
        if (actual_attribute->attribute_value.bool_val ==
            condition->expected_value.bool_val)
        {
            return true;
        }
        break;
    case (CHARACTER):
        if (actual_attribute->attribute_value.char_val ==
            condition->expected_value.char_val)
        {
            return true;
        }
        break;
    case (STRING):
        if (!strcmp(actual_attribute->attribute_value.str_val,
                    condition->expected_value.str_val))
        {
            return true;
        }
        break;
    case (INTEGER):
        if (actual_attribute->attribute_value.int_val ==
            condition->expected_value.int_val)
        {
            return true;
        }
        break;
    }
    return false;
}

/* see game_action.h */
condition_t *inventory_condition_new(player_t *player, item_t *expected_item)
{
    if (player == NULL || expected_item == NULL)
    {
        return NULL;
    }

    inventory_condition_t *new_condition = malloc(sizeof(inventory_condition_t));
    new_condition->player_to_check = player;
    new_condition->expected_item = expected_item;

    condition_t *condition_wrapper = malloc(sizeof(game_action_condition_t));
    condition_wrapper->condition.inven_type = new_condition;
    condition_wrapper->condition_tag = INVENTORY;

    return condition_wrapper;
}

/* helper for check_condition */
bool check_inventory_condition(inventory_condition_t *condition)
{
    return item_in_inventory(condition->player_to_check, condition->expected_item);
}

/* see game_action.h */
bool check_condition(condition_t *condition)
{
    switch (condition->condition_tag)
    {
    case (ATTRIBUTE):
        return check_attribute_condition(condition->cond.attr_type);
    case (INVENTORY):
        return check_inventory_condition(condition->cond.inven_type);
    }
}

/* see game_action.h */
bool all_conditions_met(condition_list_t *cond_list)
{
    if(cond_list == NULL){
        return false; // no conditions to check
    }
    condition_t *tmp = cond_list;
    while (tmp != NULL) // iterate through all conditions
    {
        if (!(check_condition(tmp)))
        {
            return FALSE;
        }
        tmp = tmp->next;
    }
    // all conditions met
    return TRUE;
}
