#ifndef _CUSTOM_TYPE_H_
#define _CUSTOM_TYPE_H_

#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "lauxlib.h"
#include "lua.h"
#include "lualib.h"

/* File consisting of the custom pseudo-type created by Custom Scripts (inspired by libobj)
   =========================================================================== */

typedef enum data_type
{
    NONE_TYPE = 0,
    BOOL_TYPE = 1,
    CHAR_TYPE = 2,
    INT_TYPE = 3,
    STR_TYPE = 4,
} data_type_t;

typedef struct arg_t
{
    // Type of underlying data
    data_type_t type;
    
    // Data associated with the argument
    union
    {
        bool b;
        char c;
        int  i;
        char *s;
        char *lua;
    } data;

    // Pointer to the next argument
    struct arg_t *next;
} arg_t;

typedef struct obj_t
{
    // Type of underlying data
    data_type_t type;

    // Whether this data will be represented by a Lua script
    bool is_lua;

    // Data associated with the object
    union
    {
        bool b;
        char c;
        int  i;
        char *s;
        char *lua;
    } data;

    // Linked list of arguments
    arg_t *args;
} object_t;

/**
 * arg_t_new() creates an empty arg_t struct
 * Returns:
 * - pointer to an empty argument struct
 */

arg_t *arg_t_new();

/**
 * arg_t_bool() creates an arg_t struct containing a boolean
 * Parameters:
 * - bool value to be stored in the argument
 * Returns:
 * - pointer to an argument struct containing the bool
 */

arg_t *arg_t_bool(bool b);

/**
 * arg_t_add() adds an arg_t struct to the end of the arg_t linked list
 * Parameters:
 * - head of the arg_t linked list
 * - arg_t struct to be added
 */
void arg_t_add(arg_t *head, arg_t *add);


/**
 * obj_t_new() creates an empty object_t struct
 * Returns:
 * - pointer to an empty object struct
 */
object_t *obj_t_new();

/**
 * obj_t_bool() creates an object_t struct containing a boolean
 * Parameters:
 * - bool value to be stored
 * - Lua script (NULL if no script to be specified)
 * - argument linked list to be passed to Lua if applicable
 * Returns:
 * - pointer to an object struct containing the bool
 */
object_t *obj_t_bool(bool b, char *lua, arg_t* head);

/**
 * obj_t_char() creates an object_t struct containing a char
 * Parameters:
 * - char value to be stored
 *  - Lua script (NULL if no script to be specified)
 * Returns:
 * - pointer to an object struct containing the char
 */
object_t *obj_t_char(char c, char *lua);

/**
 * obj_t_int() creates an object_t struct containing a int
 * Parameters:
 * - char value to be stored
 *  - Lua script (NULL if no script to be specified)
 * Returns:
 * - pointer to an object struct containing the int
 */
object_t *obj_t_int(int i, char *lua);

/**
 * obj_t_str() creates an object_t struct containing a string
 * Parameters:
 * - char value to be stored
 *  - Lua script (NULL if no script to be specified)
 * Returns:
 * - pointer to an object struct containing the str
 */
object_t *obj_t_str(char *s, char *lua);

/**
 * bool_t_get() returns a bool from an object_t struct
 * Parameters:
 * - ot: an obj_t
 * Returns:
 * - bool from ot
 */
bool bool_t_get(object_t *ot);

/**
 * char_t_get() returns a char from an object_t struct
 * Parameters:
 * - ot: an obj_t
 * Returns:
 * - char from ot
 */
char char_t_get(object_t *ot);

/**
 * int_t_get() returns an int from an object_t struct
 * Parameters:
 * - ot: an obj_t
 * Returns:
 * - integer from ot
 */
int int_t_get(object_t *ot);

/**
 * string_t_get() returns a string from an object_t struct
 * Parameters:
 * - ot: an obj_t
 * Returns:
 * - string from ot
 */
char* str_t_get(object_t *ot);

#endif