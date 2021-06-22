#include <YSI_Coding\y_hooks>

hook OnGameModeInit(){
    Log(LOG_MODULE, "[business/casino] Casino entrance loaded...");
    return 1;
}

EnterCasino(playerid, entranceid){
    SetPlayerPos(playerid, Casino_Exit_Position[entranceid][0], Casino_Exit_Position[entranceid][1], Casino_Exit_Position[entranceid][2]);
    SetPlayerInterior(playerid, Casino_Exit_Interior[entranceid]);
    SetPlayerVirtualWorld(playerid, Casino_Exit_World[entranceid]);

    TogglePlayerControllable(playerid, false);
    wait_ms(1000);
    TogglePlayerControllable(playerid, true);
}

bool:IsPlayerNearCasinoEntrance(playerid, entranceid){
    if(
        IsPlayerInRangeOfPoint(playerid, 5.0, Casino_Entrance_Position[entranceid][0], Casino_Entrance_Position[entranceid][1], Casino_Entrance_Position[entranceid][2])
        &&
        GetPlayerInterior(playerid) == Casino_Entrance_Interior[entranceid]
        &&
        GetPlayerVirtualWorld(playerid) == Casino_Entrance_World[entranceid]
    ){
        return true;
    }
    return false;
}

YCMD:entercasino(playerid, params[], help){
    if(help){
        SendCustomMessage(playerid, MESSAGE_HELP, "/entercasino lets you enter the casino door you are currently at.");
        return 1;
    }

    foreach(new i : CasinoEntrances){
        if(IsPlayerNearCasinoEntrance(playerid, i)){
            EnterCasino(playerid, i);
        }
    }
    return 1;
}