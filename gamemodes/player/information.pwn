#include <YSI_Coding\y_hooks>

new
    User_ID[MAX_PLAYERS],
    User_Remember_Password[MAX_PLAYERS];

new
    Character_Name[MAX_PLAYERS][MAX_PLAYER_NAME+1],
    Character_Age[MAX_PLAYERS],
    Character_Sex[MAX_PLAYERS][MAX_SEX_NAME],
    Character_Nationality[MAX_PLAYERS][MAX_NATIONALITY_NAME],
    Character_Personality[MAX_PLAYERS][MAX_PERSONALITY_NAME],
    Character_Religion[MAX_PLAYERS][MAX_RELIGION_NAME],
    Float:Character_Position[MAX_PLAYERS][4],
    Character_Interior[MAX_PLAYERS],
    Character_World[MAX_PLAYERS],
    Character_Skin[MAX_PLAYERS];

enum{
    CHECKPOINT_INVALID = -1,
    CP_BUS_STARTROUTE,
};

new Player_Checkpoint[MAX_PLAYERS] = {CHECKPOINT_INVALID, ...};

hook OnGameModeInit(){
    Log(LOG_MODULE, "[player/] Player information loaded...");
    return 1;
}

hook OnPlayerConnect(playerid){
    format(Character_Name[playerid], MAX_PLAYER_NAME+1, "%s", GetPlayerNameEx(playerid));
    Character_Age[playerid] = 18;
    format(Character_Sex[playerid], MAX_SEX_NAME, "%s", "None");
    format(Character_Nationality[playerid], MAX_NATIONALITY_NAME, "%s", "None");
    format(Character_Personality[playerid], MAX_PERSONALITY_NAME, "%s", "None");
    format(Character_Religion[playerid], MAX_RELIGION_NAME, "%s", "None");
    Character_Position[playerid][0] = 1674.6768;
    Character_Position[playerid][1] = 1447.7264;
    Character_Position[playerid][2] = 10.7896;
    Character_Position[playerid][3] = 270.0;
    Character_Interior[playerid] = 0;
    Character_World[playerid] = 0;

    SetPVarInt(playerid, "IsPlayerLoggedIn", 0);
    SetPVarInt(playerid, "IsPlayerLoggingIn", 0);

    Log(LOG_PLAYER_CONNECTION, "[Player Connection]: [%d] %s has connected to the server.", playerid, GetPlayerNameEx(playerid));
    return 1;
}

hook OnPlayerDisconnect(playerid, reason){
    new DisconnectReason[] = {
        "Crashed",
        "Quit",
        "Kick/Ban"
    };

    Log(LOG_PLAYER_CONNECTION, "[Player Connection]: [%d] %s has disconnected from the server (%s).", playerid, GetPlayerNameEx(playerid), DisconnectReason[reason]);
    return 1;
}

new const personalities[] = "\
    Charismatic\n\
    Extrovert\n\
    Introvert\n\
    Intelligent\n\
    Skillful\
";

hook function SetPlayerPos(playerid, Float:x, Float:y, Float:z){
    if(GetPVarInt(playerid, "IsPlayerLoggedIn")){
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "UPDATE char_info SET char_pos_x = %f, char_pos_y = %f, char_pos_z = %f WHERE u_id = %d", x, y, z, User_ID[playerid]);
        mysql_tquery(SQL_Handle, SQL_Buffer);
    }
    return continue(playerid, Float:x, Float:y, Float:z);
}

hook function SetPlayerFacingAngle(playerid, Float:ang){
    if(GetPVarInt(playerid, "IsPlayerLoggedIn")){
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "UPDATE char_info SET char_pos_a = %f WHERE u_id = %d", ang, User_ID[playerid]);
        mysql_tquery(SQL_Handle, SQL_Buffer);
    }
    return continue(playerid, Float:ang);
}

hook function SetPlayerSkin(playerid, skinid){
    Character_Skin[playerid] = skinid;

    if(GetPVarInt(playerid, "IsPlayerLoggedIn")){
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "UPDATE char_info SET char_skin = %d WHERE u_id = %d", skinid, User_ID[playerid]);
        mysql_tquery(SQL_Handle, SQL_Buffer);
    }
    return continue(playerid, skinid);
}