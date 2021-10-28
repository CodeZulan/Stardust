#include <YSI_Coding\y_hooks>

#define MAX_CONTRACTS   1

// CreateVehicle(431, 2594.5503, 1738.1200, 10.9240, 180.000, 0, 6, -1); // next_in_line_bus_point

#define MAX_BUSES           5
#define MAX_ROUTES          7
#define MAX_STOPS           15
#define INVALID_BUS         -1

new Float:Bus_Terminal_Point[2][3] = {
    {2593.1152,1740.0920,10.9215}, // CP_BUS_START
    {2602.8782,1740.6420,10.9200} // CP_BUS_FINISH
};

new Float:Routes[][][3] = {
    {
        {2545.1807,1625.7289,10.7756},  // CP_BUS_RED_ROUTE_1
        {2440.6055,1615.5132,10.7906},  // CP_BUS_RED_ROUTE_1_1
        {2424.1748,1516.5610,10.7736},  // CP_BUS_RED_ROUTE_2
        {2425.3899,1205.7000,10.8105},  // CP_BUS_RED_ROUTE_2_1
        {2390.9180,1196.2767,10.7683},  // CP_BUS_RED_ROUTE_3
        {2344.9417,985.54350,10.8192},  // CP_BUS_RED_ROUTE_3_1
        {2304.4353,975.79770,10.7712},  // CP_BUS_RED_ROUTE_3_2
        {2285.8184,726.72630,10.7872},  // CP_BUS_RED_ROUTE_3_3
        {2254.4551,716.64650,10.7699},  // CP_BUS_RED_ROUTE_4
        {2169.4775,969.93240,10.8429},  // CP_BUS_RED_ROUTE_5
        {2330.7483,970.55630,10.7681},  // CP_BUS_RED_ROUTE_5_1
        {2350.6704,1171.2762,10.7746},  // CP_BUS_RED_ROUTE_6
        {2412.9294,1190.9827,10.7666},  // CP_BUS_RED_ROUTE_6_1
        {2429.6387,1594.5724,10.7686}  // CP_BUS_RED_ROUTE_6_2
    }
};

enum{
    ROUTE_RED,
    ROUTE_GREEN,
    ROUTE_ORANGE,
    ROUTE_BLUE,
    ROUTE_PURPLE,
    ROUTE_YELLOW,
    ROUTE_BROWN,
};

enum{
    CONTRACT_LVTRANSIT
};

new
    Passenger_Bus[MAX_BUSES],
    Bus_EnRoute[MAX_BUSES] = {-1, ...},
    Bus_Route[MAX_BUSES][MAX_STRING];

new
    Text3D:Bus_Label[MAX_BUSES];

new
    bool:Character_SignedContract[MAX_PLAYERS][MAX_CONTRACTS];

    CreateDynamicCP(Float:x, Float:y, Float:z, Float:size, worldid = -1, interiorid = -1, playerid = -1, Float:streamdistance = 100.0)

hook OnGameModeInit(){
    CreateDynamic3DTextLabel("Las Venturas Transits\n"COL_YELLOW"/signcontract", COLOR_LIME, 2563.9307, 1782.5321, 10.8203, 10.0);

    Passenger_Bus[0] = CreateVehicle(431, 2566.6907, 1758.4063, 10.9290, 270.0000, 0, 6, -1); // Bus 1
    Passenger_Bus[1] = CreateVehicle(431, 2566.7979, 1762.8042, 10.9290, 270.0000, 0, 6, -1); // Bus 2
    Passenger_Bus[2] = CreateVehicle(431, 2566.8521, 1766.8879, 10.9290, 270.0000, 0, 6, -1); // Bus 3
    Passenger_Bus[3] = CreateVehicle(431, 2566.8823, 1771.0591, 10.9290, 270.0000, 0, 6, -1); // Bus 4
    Passenger_Bus[4] = CreateVehicle(431, 2566.8567, 1775.2130, 10.9290, 270.0000, 0, 6, -1); // Bus 5

    new bus_string[MAX_STRING];

    for(new i; i < MAX_BUSES; i++){
        format(bus_string, MAX_STRING, ""COL_ORANGE"Terminal\n"COL_WHITE"["COL_YELLOW"Bus "COL_AQUA"%d"COL_WHITE"]", i+1);
        Bus_Label[i] = CreateDynamic3DTextLabel(bus_string, COLOR_WHITE, 0.0, 6.0, 0.0, 10.0, .attachedvehicle = Passenger_Bus[i]);
    }
    return 1;
}

hook OnPlayerConnect(playerid){
    return 1;
}

YCMD:signcontract(playerid, params[], help){
    SignContract(playerid, CONTRACT_LVTRANSIT);
    return 1;
}

SignContract(playerid, contract){
    if(contract == CONTRACT_LVTRANSIT){
        if(!IsPlayerInRangeOfPoint(playerid, 2.0, 2563.9307, 1782.5321, 10.8203)){
            SendCustomMessage(playerid, MESSAGE_ERROR, "You are not in range of the job application area for Bus Driver job.");
            return 1;
        }
        if(Character_SignedContract[playerid][CONTRACT_LVTRANSIT]){
            SendCustomMessage(playerid, MESSAGE_ERROR, "You have already signed the contract for Las Venturas Transit, use /contract info to check your contract.");
            return 1;
        }

        Dialog_ShowCallback(playerid, using public OnPlayerSignContract<iiiis>, DIALOG_STYLE_MSGBOX, "Las Venturas Transit Driver's Contract", "The Las Venturas Drivers' Contract\nNote: This contract between the company and the driver shall not be disregarded if both agreed, should\nthe other party disobey the terms of agreement shall be dealt with the contract's stated punishment/s.\n\nThe terms of the contract is as of follows,\n(1) Should the driver of the asigned bus use the bus for personal use, the driver of the assigned bus\nshall be given a mis-use warning and will be given a one day restriction to sign another contract.\n\n(2) Should the driver of the assigned bus damage the bus where the bus is required to be repaired\nthe company will use the collateral ($1,500) as the primary source of payment for the repairing of the vehicle,\nand should the collateral be not enough for the repairs, the company is allowed to issue the driver of the bus\nto make up for the remaining balance.", "Proceed", "Exit");
    }
    return 1;
}

forward OnPlayerSignContract(playerid, dialogid, response, listitem, string:inputtext[]);
public OnPlayerSignContract(playerid, dialogid, response, listitem, string:inputtext[]){
    if(response){
        if(Character_Cash[playerid] < 1500){
            SendCustomMessage(playerid, MESSAGE_ERROR, "You don't have enough cash to pay for the collateral!");
            return 1;
        }

        Character_SignedContract[playerid][CONTRACT_LVTRANSIT] = true;

        ManagePlayerKey(playerid, Passenger_Bus[GetAvailableBus()]);
        SendCustomMessage(playerid, MESSAGE_INFO, "You have been given the key to Bus Number %d and paid $1,500 as collateral.", GetAvailableBus()+1);
        Character_Cash[playerid] -= 1500;
        return 1;
    }
    return 1;
}

hook OnPlayerStateChange(playerid, newstate, oldstate){
    if(newstate == PLAYER_STATE_DRIVER){
        for(new i; i < sizeof(Passenger_Bus); i++){
            if(GetPlayerVehicleID(playerid) == Passenger_Bus[i]){
                SendCustomMessage(playerid, MESSAGE_INFO, "You have entered this transport bus as a driver.");
                if(!PlayerHasKey(playerid, GetPlayerVehicleID(playerid))){
                    SendCustomMessage(playerid, MESSAGE_WARNING, "You do not have the key for this transport bus, get inside the LV Transportation Office to sign the driver contract.");
                    return 1;
                }
            }
        }
    }
    return 1;
}

YCMD:startroute(playerid, params[], help){
    new engine, lights, alarm, doors, bonnet, boot, objective, bus_string[MAX_STRING];
    GetVehicleParamsEx(GetPlayerVehicleID(playerid), engine, lights, alarm, doors, bonnet, boot, objective);
    if(engine){
        new random_bus_route = Random(ROUTE_RED, ROUTE_RED);
        Bus_EnRoute[GetPlayerBus(playerid)] = random_bus_route;

        SetPlayerGlobalCheckpoint(playerid, Bus_Terminal_Point[0][0], Bus_Terminal_Point[0][1], Bus_Terminal_Point[0][2], 5.0, CP_BUS_START);

        format(bus_string, MAX_STRING, ""COL_ORANGE"%s\n"COL_WHITE"["COL_YELLOW"Bus "COL_AQUA"%d"COL_WHITE"]", GetBusRoute(GetPlayerBus(playerid)), GetPlayerBus(playerid)+1);

        UpdateDynamic3DTextLabelText(Bus_Label[GetPlayerBus(playerid)], COLOR_WHITE, bus_string);

        SendCustomMessage(playerid, MESSAGE_INFO, "You are now enroute, please follow the route's checkpoint to go to the next bus stop.");
    }
    return 1;
}

hook OnPlayerEnterCheckpoint(playerid){
    if(Player_Checkpoint[playerid] == CP_BUS_START){
        SetPlayerGlobalCheckpoint(playerid, Routes[0][0][0], Routes[0][0][1], Routes[0][0][2], 5.0, CP_BUS_RED_ROUTE_1);
    }
    else if(Player_Checkpoint[playerid] == CP_BUS_RED_ROUTE_1){
        SetPlayerGlobalCheckpoint(playerid, Routes[0][0][0], Routes[0][0][1], Routes[0][0][2], 5.0, CP_BUS_RED_ROUTE_2);
    }
}

GetAvailableBus(){
    for(new i; i < MAX_BUSES; i++){
        if(Bus_EnRoute[i] == -1){
            return i;
        }
    }
    return INVALID_VEHICLE_ID;
}

GetPlayerBus(playerid){
    for(new i; i < MAX_BUSES; i++){
        if(GetPlayerVehicleID(playerid) == Passenger_Bus[i]){
            return i;
        }
    }
    return INVALID_BUS;
}

GetBusRoute(busid){
    if(Bus_EnRoute[busid] == ROUTE_RED){
        Bus_Route[busid] = "Red Route";
    }
    else if(Bus_EnRoute[busid] == ROUTE_GREEN){
        Bus_Route[busid] = "Green Route";
    }
    else if(Bus_EnRoute[busid] == ROUTE_ORANGE){
        Bus_Route[busid] = "Orange Route";
    }
    else if(Bus_EnRoute[busid] == ROUTE_BLUE){
        Bus_Route[busid] = "Blue Route";
    }
    else if(Bus_EnRoute[busid] == ROUTE_PURPLE){
        Bus_Route[busid] = "Purple Route";
    }
    else if(Bus_EnRoute[busid] == ROUTE_YELLOW){
        Bus_Route[busid] = "Yellow Route";
    }
    else if(Bus_EnRoute[busid] == ROUTE_BROWN){
        Bus_Route[busid] = "Brown Route";
    }
    return Bus_Route[busid];
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