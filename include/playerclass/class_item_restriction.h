#ifndef _CLASS_ITEM_RESTRICTION_H
#define _CLASS_ITEM_RESTRICTION_H
/*
 * Module for class-item restrictions. Provides functionality for
 * restricting a class from using a specific item and checking
 * whether or not a class is restricted from item usage. 
*/
#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include "game-state/item.h"
#include "playerclass/class.h"
#include "playerclass/class_structs.h"

/* Given an item and a class, adds an attribute of the class to the item representing a restriction
 * 
 * Utilizes the class restrictions field of an item to set this information
 *
 * Parameters:
 * - item_t* item: item to which class attribute is being added
 * - class_t* class: class which is restricted from using item
 * 
 * Returns:
 * - int: 
 *   - SUCCESS if successful
 *   - FAILURE if not
 */
int add_item_restriction(item_t* item, class_t* class);

/* Given an item and a class, returns whether or not that class is restricted from using the item
 * Utilizes the class restrictions field of an item to retrieve this information
 *
 * Parameters:
 * - item_t* item: item being checked for class restrictions
 * - class_t* class: class being checked
 * 
 * Return:
 * - bool: 
 *    - true if restricted
 *    - false if not
*/
bool is_restricted(item_t* item, class_t* class);

/* Given an item and a class, removes the class restriction on the item
 * 
 * Utilizes the class restrictions field of an item to change this information
 *
 * Parameters:
 * - item_t* item: item to which class attribute is being removed
 * - class_t* class: class which is restricted from using item
 * 
 * Returns:
 * - int: 
 *   - SUCCESS if successful
 *   - FAILURE if not
 */
int remove_item_restriction(item_t* item, class_t* class)

#endif /* CLASS_ITEM_RESTRICTION_H */