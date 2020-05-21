/* 
 * Functions and structs to be used in branch_block_t implementation
 */

#ifndef INCLUDE_BRANCH_BLOCK_FUNCTIONS_H
#define INCLUDE_BRANCH_BLOCK_FUNCTIONS_H

#include <stdlib.h>
#include <stdio.h>
#include "game-state/item.h"
#include "custom-actions/conditional_block_functions.h"
#include "custom-actions/control_block_functions.h"

/* A block that holds pointers to both a control and a conditional block */
typedef struct branch_block;

/* 
 * Allocates a branch block in the heap. 
 * 
 * Parameters: 
 * - integer containing the number of conditional blocks
 * - pointer to a list of conditional blocks
 * - integer for the number of control blocks
 * - pointer to a list of control blocks 
 * - enum representing the conditional type 
 * 
 * Returns: 
 * - A branch block. 
 */  
branch_block_t* branch_block_new(int num_conditionals, conditional_block_t** 
conditionals, enum conditional_type conditional_type, int num_controls, 
control_block_t** controls);

/* 
 * Initializes a branch block. 
 * 
 * Parameters: 
 * - branch block. Must point to already allocated memory.  
 * - integer containing the number of conditional blocks
 * - pointer to a list of conditional blocks
 * - integer for the number of control blocks
 * - pointer to a list of control blocks 
 * - enum representing the conditional type   
 * 
 * Returns: 
 * - SUCCESS if success, FAILURE if error occurs
 */  
int branch_block_init(branch_block_t *branch, int num_conditionals, conditional_block_t**
conditionals, enum conditional_type conditional_type, int num_controls,
control_block_t** controls);

/* 
 * Frees a branch block. 
 * 
 * Parameters: 
 * - branch block. Must point to a branch block allocated with branch_block_new. 
 * 
 * Returns: 
 * - Always returns 0. 
 */  
int branch_block_free(branch_block_t *branch);

#endif /* INCLUDE_BRANCH_BLOCK_FUNCTIONS_H */
