#include <YSI_Coding\y_hooks>

// CreateVehicle(431, 2594.5503, 1738.1200, 10.9240, 180.000, 0, 6, -1); // next_in_line_bus_point

new
    Passenger_Bus[5];

hook OnGameModeInit(){
    Passenger_Bus[0] = CreateVehicle(431, 2566.6907, 1758.4063, 10.9290, 270.0000, 0, 6, -1); // bus_1
    Passenger_Bus[1] = CreateVehicle(431, 2566.7979, 1762.8042, 10.9290, 270.0000, 0, 6, -1); // bus_2
    Passenger_Bus[2] = CreateVehicle(431, 2566.8521, 1766.8879, 10.9290, 270.0000, 0, 6, -1); // bus_3
    Passenger_Bus[3] = CreateVehicle(431, 2566.8823, 1771.0591, 10.9290, 270.0000, 0, 6, -1); // bus_4
    Passenger_Bus[4] = CreateVehicle(431, 2566.8567, 1775.2130, 10.9290, 270.0000, 0, 6, -1); // bus_5
    return 1;
}

hook OnPlayerStateChange(playerid, newstate, oldstate){
    if(newstate == PLAYER_STATE_DRIVER){
        for(new i; i < sizeof(Passenger_Bus); i++){
            if(GetPlayerVehicleID(playerid) == Passenger_Bus[i]){
                SendCustomMessage(playerid, MESSAGE_INFO, "You have entered a passenger bus.");
            }
        }
    }
    return 1;
}

YCMD:veh(playerid, params[], help) 
{
    new vehicleid;
    if(sscanf(params, "i", vehicleid)){
        return 1;
    }

    CreateVehicle(vehicleid, GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z), GetPlayerPosition(playerid, POS_A), 0, 0, 0, 0);
    return 1;
}