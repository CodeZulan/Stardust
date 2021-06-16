#include <YSI_Coding\y_hooks>

hook OnPlayerText(playerid, text[]){
    static message[MAX_STRING];
    format(message, MAX_STRING, " %s says: %s", GetPlayerNameEx(playerid, false), text);
    SendFadingMessage(playerid, message);
    return 0;
}

YCMD:l(playerid, params[], help) = low;

YCMD:low(playerid, params[], help){
    static message[MAX_STRING], fstring[MAX_STRING];

    if(help){
        SendCustomMessage(playerid, MESSAGE_HELP, "/low will lower the radius of how audible your character's chat.");
        return 1;
    }

    if(sscanf(params, "s[256]", message)){
        SendCustomMessage(playerid, MESSAGE_USAGE, "/l [message].");
        SendCustomMessage(playerid, MESSAGE_SAMPLE, " %s says (low): Hey bro, let me tell you a secret.", GetPlayerNameEx(playerid, false));
        return 1;
    }

    format(fstring, MAX_STRING, " %s says (low): %s", GetPlayerNameEx(playerid, false), message);
    SendFadingMessage(playerid, fstring, MESSAGE_LOCAL/2);
    return 1;
}

YCMD:s(playerid, params[], help) = shout;

YCMD:shout(playerid, params[], help){
    static message[MAX_STRING], fstring[MAX_STRING];

    if(help){
        SendCustomMessage(playerid, MESSAGE_HELP, "/shout will increase the radius of how audible your character's chat.");
        return 1;
    }

    if(sscanf(params, "s[256]", message)){
        SendCustomMessage(playerid, MESSAGE_USAGE, "/shout [message].");
        SendCustomMessage(playerid, MESSAGE_SAMPLE, " %s says (shout): Hey bro, come here.", GetPlayerNameEx(playerid, false));
        return 1;
    }

    format(fstring, MAX_STRING, " %s says (low): %s", GetPlayerNameEx(playerid, false), message);
    SendFadingMessage(playerid, fstring, MESSAGE_LOCAL*1.5);
    return 1;
}