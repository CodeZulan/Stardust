#include <YSI_Coding\y_hooks>

hook OnGameModeInit(){
    Group_SetCommand(Group_Management, YCMD:createcasino, ALLOW);
    return 1;
}

hook OnPlayerConnect(playerid){
    Group_SetPlayer(Group_Management, playerid, true);
    return 1;
}

YCMD:createcasino(playerid, params[], help){
    static
        arg1[32],
        arg2[16];

    if(help){
        SendCustomMessage(playerid, MESSAGE_HELP, "/createcasino will show list of subcommands for casino creation, if the subcommand does not exist,-..");
        SendClientMessage(playerid, COLOR_WHITE, "    ..-a casino will be made with and the title would be the second argument.");
        return 1;
    }
    
    if(sscanf(params, "s[32]S()[16]", arg1, arg2)){
        SendCustomMessage(playerid, MESSAGE_USAGE, "/createcasino [title/subcommand (entrance | ...)]");
        return 1;
    }

    if(!strcmp(arg1, "entrance")){
        if(isnull(arg2)){
            SendCustomMessage(playerid, MESSAGE_USAGE, "/createcasino entrance [casinoid]");
            return 1;
        }
        
        new
            casinoid = strval(arg2);

        if(!Iter_Count(Casinos)){
            SendCustomMessage(playerid, MESSAGE_WARNING, "There are no casinos made yet.");
        }

        if(!Iter_Contains(Casinos, casinoid)){
            SendCustomMessage(playerid, MESSAGE_ERROR, "Casino ID doesn't exist yet.");
            return 1;
        }

        Iter_Alloc(CasinoEntrances);

        Casino_Entrance[casinoid] = CreateDynamicPickup(PICKUP_TIKI, 1, GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z), GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, 10.0);
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "INSERT INTO casino_entrance(casino_id, casino_entrance_pos_x, casino_entrance_pos_y, casino_entrance_pos_z, casino_entrance_interior, casino_entrance_world) VALUES(%d, %f, %f, %f, %d, %d)", Casino_ID[casinoid], GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z), GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));
        printf("%s", SQL_Buffer);
        mysql_tquery(SQL_Handle, SQL_Buffer);
    }
    else{
        new
            casinoid = Iter_Free(Casinos);

        format(Casino_Name[casinoid], MAX_CASINO_NAME, arg1);
        Iter_Alloc(Casinos);
        
        SendCustomMessage(playerid, MESSAGE_INFO, "You have created a casino named %s.", arg1);
        printf("You have created a casino named %s.", arg1);

        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "INSERT INTO casinos(casino_name, casino_owner) VALUES('%e', '%e')", arg1, GetPlayerNameEx(playerid));
        mysql_tquery(SQL_Handle, SQL_Buffer, "OnCasinoCreate", "i", casinoid);
        
    }
    return 1;
}

forward OnCasinoCreate(casinoid);
public OnCasinoCreate(casinoid){
    Casino_ID[casinoid] = cache_insert_id();
    printf("Passed_Casino_ID: %d", casinoid);
    printf("Casino_ID: %d", Casino_ID[casinoid]);
}