#include <YSI_Coding\y_hooks>

#define MAX_CHECKPOINTS     1000

enum{
    CHECKPOINT_INVALID = -1,
    CP_BUS_START,
    CP_BUS_FINISH,
    CP_BUS_RED_ROUTE_1,
    CP_BUS_RED_ROUTE_1_1,
    CP_BUS_RED_ROUTE_2,
    CP_BUS_RED_ROUTE_2_1,
    CP_BUS_RED_ROUTE_3,
    CP_BUS_RED_ROUTE_3_1,
    CP_BUS_RED_ROUTE_3_2,
    CP_BUS_RED_ROUTE_3_3,
    CP_BUS_RED_ROUTE_4,
    CP_BUS_RED_ROUTE_5,
    CP_BUS_RED_ROUTE_5_1,
    CP_BUS_RED_ROUTE_6,
    CP_BUS_RED_ROUTE_6_1,
    CP_BUS_RED_ROUTE_6_2,
};

new Player_Checkpoint[MAX_PLAYERS];

hook OnPlayerConnect(playerid){
    Player_Checkpoint[playerid] = CHECKPOINT_INVALID;
    return 1;
}

SetPlayerGlobalCheckpoint(playerid, Float:x, Float:y, Float:z, Float:size, checkpoint_id = CHECKPOINT_INVALID){
    SetPlayerCheckpoint(playerid, x, y, z, size);
    Player_Checkpoint[playerid] = checkpoint_id;
}