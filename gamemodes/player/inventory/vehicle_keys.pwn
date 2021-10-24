#include <YSI_Coding\y_hooks>

new
    bool:Character_HasKey[MAX_PLAYERS][MAX_VEHICLES] = {false, ...};

hook OnPlayerConnect(playerid){

    return 1;
}

bool:PlayerHasKey(playerid, vehicleid){
    for(new i; i < MAX_VEHICLES; i++){
        if(vehicleid == i){
            if(Character_HasKey[playerid][i]){
                return true;
            }
        }
    }
    return false;
}

ManagePlayerKey(playerid, vehicleid, bool:give=true){
    Character_HasKey[playerid][vehicleid] = give;
}