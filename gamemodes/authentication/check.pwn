#include <YSI_Coding\y_hooks>

new
    PlayerText:Background_TD[MAX_PLAYERS],
    PlayerText:Server_Name_TD[MAX_PLAYERS][2],
    PlayerText:Checking_Message_TD[MAX_PLAYERS];

hook OnGameModeInit(){
    Log(LOG_MODULE, "[authentication/] Account check loaded...");
    return 1;
}

hook OnPlayerConnect(playerid){
    Background_TD[playerid] = CreatePlayerTextDraw(playerid, 320.000000, 1.000000, "_");
    PlayerTextDrawFont(playerid, Background_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Background_TD[playerid], 0.600000, 50.300006);
    PlayerTextDrawTextSize(playerid, Background_TD[playerid], 303.000000, 638.000000);
    PlayerTextDrawSetOutline(playerid, Background_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Background_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Background_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Background_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Background_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Background_TD[playerid], 255);
    PlayerTextDrawUseBox(playerid, Background_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Background_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Background_TD[playerid], 0);

    Server_Name_TD[playerid][0] = CreatePlayerTextDraw(playerid, 213.000000, 167.000000, "Stardust");
    PlayerTextDrawFont(playerid, Server_Name_TD[playerid][0], 2);
    PlayerTextDrawLetterSize(playerid, Server_Name_TD[playerid][0], 1.474998, 6.400007);
    PlayerTextDrawTextSize(playerid, Server_Name_TD[playerid][0], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Server_Name_TD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Server_Name_TD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Server_Name_TD[playerid][0], 2);
    PlayerTextDrawColor(playerid, Server_Name_TD[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, Server_Name_TD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Server_Name_TD[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, Server_Name_TD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Server_Name_TD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Server_Name_TD[playerid][0], 0);

    Server_Name_TD[playerid][1] = CreatePlayerTextDraw(playerid, 361.000000, 223.000000, "Roleplay");
    PlayerTextDrawFont(playerid, Server_Name_TD[playerid][1], 3);
    PlayerTextDrawLetterSize(playerid, Server_Name_TD[playerid][1], 1.458329, 3.799998);
    PlayerTextDrawTextSize(playerid, Server_Name_TD[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Server_Name_TD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Server_Name_TD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Server_Name_TD[playerid][1], 2);
    PlayerTextDrawColor(playerid, Server_Name_TD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, Server_Name_TD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Server_Name_TD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, Server_Name_TD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Server_Name_TD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Server_Name_TD[playerid][1], 0);

    Checking_Message_TD[playerid] = CreatePlayerTextDraw(playerid, 149.000000, 408.000000, "Checking_Roi_Salvaje_From_The_Database...");
    PlayerTextDrawFont(playerid, Checking_Message_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Checking_Message_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Checking_Message_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Checking_Message_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Checking_Message_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Checking_Message_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Checking_Message_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Checking_Message_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Checking_Message_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Checking_Message_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Checking_Message_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Checking_Message_TD[playerid], 0);
    return 1;
}

CheckingScreenTD(playerid, toggle=true){
    if(toggle){
        PlayerTextDrawShow(playerid, Background_TD[playerid]);
        PlayerTextDrawShow(playerid, Server_Name_TD[playerid][0]);
        PlayerTextDrawShow(playerid, Server_Name_TD[playerid][1]);
        PlayerTextDrawShow(playerid, Checking_Message_TD[playerid]);
    }
    else{
        PlayerTextDrawHide(playerid, Background_TD[playerid]);
        PlayerTextDrawHide(playerid, Server_Name_TD[playerid][0]);
        PlayerTextDrawHide(playerid, Server_Name_TD[playerid][1]);
        PlayerTextDrawHide(playerid, Checking_Message_TD[playerid]);
    }
}

forward AccountCheck(playerid);
public AccountCheck(playerid){
    static string[MAX_STRING];
    format(string, MAX_STRING, "Checking_%s_in_the_database...", GetPlayerNameEx(playerid));
    PlayerTextDrawSetString(playerid, Checking_Message_TD[playerid], string);
    CheckingScreenTD(playerid);

    if(cache_num_rows()){
        cache_get_value_name_int(0, "u_id", User_ID[playerid]);
    }
    
    SetTimerEx("AccountCheckingResults", 5000, false, "ii", playerid, bool:cache_num_rows() ? true : false);
}

forward AccountCheckingResults(playerid, bool:registered);
public AccountCheckingResults(playerid, bool:registered){
    CheckingScreenTD(playerid, false);

    TogglePlayerSpectating(playerid, false);
    SetPlayerVirtualWorld(playerid, playerid + PLAYER_BUFFER);

    if(registered){
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "SELECT u_ip, u_rempass FROM users WHERE u_id = %d", User_ID[playerid]);
        mysql_tquery(SQL_Handle, SQL_Buffer, "OnPlayerFetchIP", "i", playerid);

        SetPlayerPos(playerid, 1994.5153, 1571.8406, 85.7995);
        SetPlayerInterior(playerid, 0);
        SetPlayerCameraPos(playerid, 1994.5153, 1571.8406, 91.7995);
        SetPlayerCameraLookAt(playerid, 2126.2568, 1902.9806, 18.9889, CAMERA_CUT);

        TogglePlayerControllable(playerid, false);

        SetPVarInt(playerid, "IsPlayerLoggingIn", 1);
    }
    else{
        ServerTitleTD(playerid);
        CharacterCustomizationTD(playerid);

        SetPlayerPos(playerid, 491.1762, -78.6968, 998.7578);
        SetPlayerInterior(playerid, 11);
        SetPlayerCameraPos(playerid, 491.1762, -78.6968, 998.7578);
        SetPlayerCameraLookAt(playerid, 487.6801, -78.7552, 998.7578, CAMERA_CUT);

        for(new i; i < 10; i++){
            SendClientMessage(playerid, -1, "");
        }
        SetPVarInt(playerid, "IsPlayerLoggingIn", 2);
    }
    return 1;
}