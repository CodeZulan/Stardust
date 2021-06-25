#include <YSI_Coding\y_hooks>

hook OnGameModeInit(){
    Group_SetCommand(Group_LoggedIn, YCMD:i, ALLOW);

    Log(LOG_MODULE, "[roleplay/] Roleplay commands loaded...");
    return 1;
}

hook OnPlayerConnect(playerid){
    Group_SetPlayer(Group_LoggedIn, playerid, true);
    return 1;
}

YCMD:me(playerid, params[], help) = i;

YCMD:i(playerid, params[], help){
    static
        action[MAX_STRING];

    if(help){
        SendCustomMessage(playerid, MESSAGE_HELP, "/i shows the action of your character in a roleplay manner.");
        return 1;
    }

    if(sscanf(params, "s[256]", action)){
        SendCustomMessage(playerid, MESSAGE_USAGE, "/i [action].");
        SendCustomMessage(playerid, MESSAGE_SAMPLE, ""COL_ORANGE"** "COL_PLUM"%s scratches his head. "COL_ORANGE"**", GetPlayerNameEx(playerid, false));
        return 1;
    }
    
    SendClientMessageEx(playerid, COLOR_PLUM, MESSAGE_LOCAL, "  "COL_ORANGE"** "COL_PLUM"%s %s "COL_ORANGE"**", GetPlayerNameEx(playerid, false), action);
    
    Log(LOG_PLAYER_COMMAND, "[Player Command]: [%d] %s (/i %s)", playerid, GetPlayerNameEx(playerid), action);
    return 1;
}

YCMD:do(playerid, params[], help){
    static
        description[MAX_STRING];

    if(help){
        SendCustomMessage(playerid, MESSAGE_HELP, "/do supports your roleplay by describing your roleplay or surrounding using adjectives or adverbs.");
        return 1;
    }

    if(sscanf(params, "s[256]", description)){
        SendCustomMessage(playerid, MESSAGE_USAGE, "/do [description].");
        SendCustomMessage(playerid, MESSAGE_SAMPLE, ""COL_ORANGE"** "COL_PLUM"Smoke will emit from the exhaust of the car... (( %s )). "COL_ORANGE"**", GetPlayerNameEx(playerid, false));
        return 1;
    }
    
    SendClientMessageEx(playerid, COLOR_PLUM, MESSAGE_LOCAL, "  "COL_ORANGE"** "COL_PLUM"%s (( %s )) "COL_ORANGE"**", description, GetPlayerNameEx(playerid, false));

    Log(LOG_PLAYER_COMMAND, "[Player Command]: [%d] %s (/do %s)", playerid, GetPlayerNameEx(playerid), description);
    return 1;
}

YCMD:attempt(playerid, params[], help){
    static
        action[MAX_STRING];

    if(help){
        SendCustomMessage(playerid, MESSAGE_HELP, "/attempt is almost same as /i but in this case you try to attempt an action which will result to a 50-50 chance of success or fail.");
        return 1;
    }

    if(sscanf(params, "s[256]", action)){
        SendCustomMessage(playerid, MESSAGE_USAGE, "/attemp [action].");
        SendCustomMessage(playerid, MESSAGE_SAMPLE, ""COL_ORANGE"** "COL_PLUM"%s attempted to breach the door by kicking it %s. "COL_ORANGE"**", GetPlayerNameEx(playerid, false), random(2) ? "and "COL_LIME"succeeded" : "but "COL_ORANGERED"failed");
        return 1;
    }
    
    SendClientMessageEx(playerid, COLOR_PLUM, MESSAGE_LOCAL, "  "COL_ORANGE"** "COL_PLUM"%s %s %s."COL_ORANGE"**", GetPlayerNameEx(playerid, false), action, random(2) ? "and "COL_LIME"succeeded" : "but "COL_ORANGERED"failed");

    Log(LOG_PLAYER_COMMAND, "[Player Command]: [%d] %s (/attempt %s)", playerid, GetPlayerNameEx(playerid), action);
    return 1;
}