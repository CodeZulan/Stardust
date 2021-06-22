#include <YSI_Coding\y_hooks>

hook OnGameModeInit(){
    Log(LOG_MODULE, "[business/casino] Casino information loaded...");
    return 1;
}

new
    Iterator:Casinos<MAX_CASINOS>,
    Iterator:CasinoEntrances<MAX_CASINO_ENTRANCES>;

new
    Casino_ID[MAX_CASINOS] = {-1, ...},
    Casino_Name[MAX_CASINOS][MAX_CASINO_NAME] = {"None", ...},
    Casino_Owner[MAX_CASINOS][MAX_PLAYER_NAME+1] = {"None", ...},
    Casino_Vault[MAX_CASINOS] = {0, ...},
    Casino_Entrance[MAX_CASINOS],
    Casino_Entrance_Casino[MAX_CASINO_ENTRANCES],
    Float:Casino_Entrance_Position[MAX_CASINO_ENTRANCES][3],
    Casino_Entrance_Interior[MAX_CASINO_ENTRANCES],
    Casino_Entrance_World[MAX_CASINO_ENTRANCES],
    Float:Casino_Exit_Position[MAX_CASINO_ENTRANCES][3],
    Casino_Exit_Interior[MAX_CASINO_ENTRANCES],
    Casino_Exit_World[MAX_CASINO_ENTRANCES];
