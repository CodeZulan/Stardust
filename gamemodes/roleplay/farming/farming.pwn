#include <YSI_Coding\y_hooks>

new
    // Legal Plants
    Carrot_Seeds[MAX_PLAYERS],
    Cabbage_Seeds[MAX_PLAYERS],
    // Illegal/Semi-Illegal Plants
    Marijuana_Seeds[MAX_PLAYERS],
    Opium_Seeds[MAX_PLAYERS];

hook OnPlayerConnect(playerid){
    Marijuana_Seeds[playerid] = 0;
    Opium_Seeds[playerid] = 0;
    return 1;
}

bool:IsPlayerInFarmPlot(playerid){
    for(new i; i < MAX_PLOTS; i++){
        if(IsPlayerInDynamicArea(playerid, farm_plots[i])){
            return true;
        }
    }
    return false;
}

YCMD:farm(playerid, params[], help){
    new choice[MAX_STRING], second_choice[MAX_STRING];
    if(sscanf(params, "s[16]S()[16]", choice, second_choice)){
        SendCustomMessage(playerid, MESSAGE_USAGE, "/farm [plant | harvest]");
        return 1;
    }
    if(!strcmp(choice, "plant")){
        if(!IsPlayerInFarmPlot(playerid)){
            SendCustomMessage(playerid, MESSAGE_ERROR, "You are not in any plots you owned!");
            return 1;
        }
        if(!strcmp(second_choice, "carrots")){
            SendCustomMessage(playerid, MESSAGE_INFO, "You have planted your seed!");
        }
        else if(!strcmp(second_choice, "cabbage")){
            SendCustomMessage(playerid, MESSAGE_INFO, "You have planted your seed!");
        }
        else if(!strcmp(second_choice, "marijuana")){
            SendCustomMessage(playerid, MESSAGE_INFO, "You have planted your seed!");
        }
        else if(!strcmp(second_choice, "opium")){
            SendCustomMessage(playerid, MESSAGE_INFO, "You have planted your seed!");
        }
        else{
            SendCustomMessage(playerid, MESSAGE_USAGE, "/farm plant [carrots | cabbage | marijuana | opium]");
        }
        ApplyAnimation(playerid, "BOMBER", "BOM_PLANT", 4.1, 0, 1, 1, 0, 2000, 1);
    }
    return 1;
}
