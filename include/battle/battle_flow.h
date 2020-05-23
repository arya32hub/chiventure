#ifndef BATTLE_FLOW_H
#define BATTLE_FLOW_H

#include <stdbool.h>
#include <string.h>
#include "battle_state.h"
#include "battle_structs.h"
#include "common/common.h"
#include "common/utlist.h"

/* Stub for the player struct in game-state */
typedef struct player {
    // Other fields: hash handle, inventory, other stats
    char *player_id;
    stat_t *stats;
    move_t *moves;
    item_t *items;
} player_t;

/* Stub for the game_t struct in game-state */
typedef struct game {
    // Would have other fields (eg hash tables for players, rooms, items)
    player_t *curr_player;
} game_t;

/* Stub, similar to chiventure_ctx_t except adding in_battle, which
 * marks whether or not a battle is in progress (true if in progress,
 * false if not)
 */
typedef struct chiventure_ctx_battle {
    // would have UI context here
    game_t *game;
    // would have lookup table here
    bool in_battle;
} chiventure_ctx_battle_t;

/* Stub to simulate NPC enemy, that will then later be converted to
 * the combatant struct specific to battle flow
 */
typedef struct npc_enemy {
    char *npc_id;
    stat_t *stats;
    move_t *moves;
    item_t *items;
    struct npc_enemy *prev;
    struct npc_enemy *next;
} npc_enemy_t;

/*
 * Starts the battle, sets up structs, then runs a battle loop until finished
 * For now, since we will be starting out with an implementation fo the set-up
 * of a new battlee, this function will essentially act as a battle set-up.
 * Later, the battle loop and other aspects of running the game
 * at the high-level will be added.
 *
 * Parameters:
 *  - ctx = the current chiventure context
 *  - npc_enemies = pointer to list of enemy/ies (stub for enemy NPCs)
 *  - env = environment for the battle
 *
 * Returns:
 *  - SUCCESS if successful, FAILURE otherwise
 */
 int start_battle(chiventure_ctx_battle_t *ctx, npc_enemy_t *npc_enemies,
                  environment_t env);

/*
 * Sets up the player's combatant_t struct for a new battle
 *
 * Parameters:
 *  - ctx_player = the current player in the game_t struct, which is in
 *                 the chiventure context struct
 *
 * Returns:
 *  - pointer to player's combatant_t struct initialized for new battle
 */
combatant_t *set_player(player_t *ctx_player);

/*
 * Sets up all enemy combatant structs for a new battle
 *
 * Parameters:
 *  - npc_enemies = pointer to list of enemy/ies (stub for enemy NPCs)
 *
 * Returns:
 *  - pointer to list of enemy's/enemies' combatant_t structs initialized for
 *  a new battle
 */
combatant_t *set_enemies(npc_enemy_t *npc_enemies);

/*
 * Sets up battle struct for a new battle
 *
 * Parameters:
 *  - ctx_player = pointer to player_t player in game_t struct
 *  - npc_enemies = pointer to list of enemy/ies (NPC enemy stub)
 *  - env = the environment for the battle
 *
 * Returns:
 *  - A pointer to new battle struct initialized for a new battle
 *
 */
battle_t *set_battle(player_t *ctx_player, npc_enemy_t *npc_enemies,
                      environment_t env);
#endif
