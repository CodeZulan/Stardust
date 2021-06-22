#include <YSI_Coding\y_hooks>

hook OnGameModeInit(){
    mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "SELECT * FROM casinos");
    mysql_tquery(SQL_Handle, SQL_Buffer, "OnCasinoLoad");
    return 1;
}

forward OnCasinoLoad();
public OnCasinoLoad(){
    for(new i; i < cache_num_rows(); i++){
        new
            casinoid = Iter_Free(Casinos);

        Iter_Alloc(Casinos);

        cache_get_value_name_int(i, "casino_id", Casino_ID[casinoid]);
        cache_get_value_name(i, "casino_name", Casino_Name[casinoid]);
        cache_get_value_name(i, "casino_owner", Casino_Owner[casinoid]);
        cache_get_value_name_int(i, "casino_vault", Casino_Vault[casinoid]);

        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "SELECT * FROM casino_entrance WHERE casino_id = %d", Casino_ID[casinoid]);
        mysql_tquery(SQL_Handle, SQL_Buffer, "OnCasinoEntranceLoad", "i", casinoid);
    }
}

forward OnCasinoEntranceLoad(casinoid);
public OnCasinoEntranceLoad(casinoid){
    for(new i; i < cache_num_rows(); i++){
        new
            casinoentranceid = Iter_Free(CasinoEntrances);

        Iter_Alloc(CasinoEntrances);

        cache_get_value_name_float(i, "casino_entrance_pos_x", Casino_Entrance_Position[casinoid][casinoentranceid][0]);
        cache_get_value_name_float(i, "casino_entrance_pos_y", Casino_Entrance_Position[casinoid][casinoentranceid][1]);
        cache_get_value_name_float(i, "casino_entrance_pos_z", Casino_Entrance_Position[casinoid][casinoentranceid][2]);
        cache_get_value_name_int(i, "casino_entrance_interior", Casino_Entrance_Interior[casinoid][casinoentranceid]);
        cache_get_value_name_int(i, "casino_entrance_world", Casino_Entrance_World[casinoid][casinoentranceid]);
        cache_get_value_name_float(i, "casino_exit_pos_x", Casino_Exit_Position[casinoid][casinoentranceid][0]);
        cache_get_value_name_float(i, "casino_exit_pos_y", Casino_Exit_Position[casinoid][casinoentranceid][1]);
        cache_get_value_name_float(i, "casino_exit_pos_z", Casino_Exit_Position[casinoid][casinoentranceid][2]);
        cache_get_value_name_int(i, "casino_exit_interior", Casino_Exit_Interior[casinoid][casinoentranceid]);
        cache_get_value_name_int(i, "casino_exit_world", Casino_Exit_World[casinoid][casinoentranceid]);

        Casino_Entrance[casinoid] = CreateDynamicPickup(PICKUP_TIKI, 1, Casino_Entrance_Position[casinoid][casinoentranceid][0], Casino_Entrance_Position[casinoid][casinoentranceid][1], Casino_Entrance_Position[casinoid][casinoentranceid][2], Casino_Entrance_World[casinoid][casinoentranceid], Casino_Entrance_Interior[casinoid][casinoentranceid], -1, 10.0);
    }
}