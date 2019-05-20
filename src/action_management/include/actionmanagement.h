#ifndef _ACTIONS_H_
#define _ACTIONS_H_

#include "action_structs.h"
#include "game.h"


/* File consisting of all functions created by action management
   =========================================================================== */

/*
 * Allocates a new action on the heap, calling action_init
 *
 * Parameters:
 * - c_name: a string containing an actions canonical name
 * - kind: an enumeration of the kind of action
 *
 * Returns:
 * - a pointer to a new action struct
 */
action_type_t *action_new(char *c_name, enum action_kind kind);


/*
 * A function that initializes an action struct, filling its parameters.
 *
 * Parameters:
 * - a: a pointer to an empty action_type_t allocated by action_new
 * - c_name: a string containing an actions canonical name
 * - kind: an enumeration of the kind of action
 *
 * Returns:
 * - 0 if success, 1 if an error occurs
 * - an error message in stderr if the action struct is not initialized
 */
int action_init(action_type_t *a, char *c_name, enum action_kind kind);


/*
 * A function that frees the resources associated with an action struct
 *
 * Parameters:
 * - a: An action struct. Must point to action struct allocated by action_new
 *
 * Returns:
 * - Returns void.
 */
void action_free(action_type_t *a);


// =============================================================================

/*
 * A function that returns all supported actions
 *
 * Parameters:
 * - kind: The enumerated value of kind, specifying the kind of actions wanted
 *
 * Returns:
 * - a linked list of action_type_t structs
 */
list_actions *get_supported_actions(enum action_kind kind);


// =============================================================================

/* A function that executes KIND 1 actions (ACTION <item>)
 *
 * Parameters:
 * - g: A game struct consisting of the game state
 * - a: An action struct
 * - i: An item struct
 *
 * Returns
 * - 0 on success
 * - 1 on failure
 */
int action_item(game_t *g, action_type_t *a, item_t *i);


/* A function that executes KIND 2 actions (ACTION <path>)
 *
 * Parameters:
 * - g: A game struct consisting of the game state
 * - a: An action struct
 * - p: A path struct
 *
 * Returns
 * - 0 on success
 * - 1 on failure
 */
int action_path(game_t *g, action_type_t *a, path_t *p);


/* A function that executes KIND 5 actions (ACTION <item> <item>)
 *
 * Parameters:
 * - g: A game struct containing a field for the current player
 * - a: An action struct
 * - direct: An item struct containing the direct object (the "actor")
 * - indirect: An item struct containing the indirect object (the "actee")
 *
 * Returns
 * - 0 on success
 * - 1 on failure
 */
int action_item_item(game_t *g, action_type_t *a, item_t *direct, item_t *indirect);


#endif
