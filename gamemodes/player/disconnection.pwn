#include <YSI_Coding\y_hooks>

hook OnGameModeInit(){
    Log(LOG_MODULE, "[player/] Player disconnection loaded...");
    return 1;
}

hook OnPlayerDisconnect(playerid, reason){
    if(GetPVarInt(playerid, "IsPlayerLoggedIn")){
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "UPDATE char_info SET char_pos_x = %f, char_pos_y = %f, char_pos_z = %f, char_pos_a = %f WHERE u_id = %d", GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z), GetPlayerPosition(playerid, POS_A), User_ID[playerid]);
        mysql_tquery(SQL_Handle, SQL_Buffer);
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "UPDATE char_info SET char_skin = %d WHERE u_id = %d", GetPlayerSkin(playerid), User_ID[playerid]);
        mysql_tquery(SQL_Handle, SQL_Buffer);
    }
    return 1;
}