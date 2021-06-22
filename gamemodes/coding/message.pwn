#define MESSAGE_CLIENT              -1
#define MESSAGE_LOCAL               25.0

enum{
    MESSAGE_HELP,
    MESSAGE_USAGE,
    MESSAGE_SAMPLE,
    MESSAGE_INFO,
    MESSAGE_WARNING,
    MESSAGE_ERROR,
};

#define MESSAGE_SPLIT_LENGTH        96

native SendClientMessageStr(playerid, color, AmxString:message) = SendClientMessage;

SendSplitMessage(playerid, const message[], color){
    static fstring[MAX_STRING];
    if(strlen(message) > MESSAGE_SPLIT_LENGTH){
        format(fstring, MAX_STRING, "%.*s-..", MESSAGE_SPLIT_LENGTH, message);
        SendClientMessage(playerid, color, fstring);
        format(fstring, MAX_STRING, "    -..%s", message[MESSAGE_SPLIT_LENGTH]);
        SendClientMessage(playerid, color, fstring);
    }
    else{
        SendClientMessage(playerid, color, message);
    }
}

SendClientMessageEx(playerid, color, Float:range, const fmat[], va_args<>){
    static message[MAX_STRING];
    va_format(message, MAX_STRING, fmat, va_start<4>);

    if(range != MESSAGE_CLIENT){
        foreach(new i : Player){
            if(IsPlayerInRangeOfPoint(i, MESSAGE_LOCAL, GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z))){
                SendSplitMessage(i, message, color);
            }
        }
    }
    else{
        SendSplitMessage(playerid, message, color);
    }
    return 1;
}

SendFadingMessage(playerid, const message[], Float:range=MESSAGE_LOCAL, fade1=COLOR_WHITE, fade2=COLOR_LIGHTGREY, fade3=COLOR_DARKGREY, fade4=COLOR_GREY, fade5=COLOR_DIMGREY){
    if(range != MESSAGE_CLIENT){
        foreach(new i : Player){
            if(IsPlayerInRangeOfPoint(i, range/5, GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z))){
                SendSplitMessage(i, message, fade1);
            }
            else if(IsPlayerInRangeOfPoint(i, range/4, GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z))){
                SendSplitMessage(i, message, fade2);
            }
            else if(IsPlayerInRangeOfPoint(i, range/3, GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z))){
                SendSplitMessage(i, message, fade3);
            }
            else if(IsPlayerInRangeOfPoint(i, range/2, GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z))){
                SendSplitMessage(i, message, fade4);
            }
            else if(IsPlayerInRangeOfPoint(i, range, GetPlayerPosition(playerid, POS_X), GetPlayerPosition(playerid, POS_Y), GetPlayerPosition(playerid, POS_Z))){
                SendSplitMessage(i, message, fade5);
            }
        }
    }
    return 1;
}

SendCustomMessage(playerid, type, const fmat[], va_args<>){
    static message[MAX_STRING];
    va_format(message, MAX_STRING, fmat, va_start<3>);
    if(type == MESSAGE_HELP){
        return SendClientMessageStr(playerid, COLOR_PINK, str_format("HELP: "COL_WHITE"%s", message));
    }
    else if(type == MESSAGE_USAGE){
        return SendClientMessageStr(playerid, COLOR_YELLOW, str_format("USAGE: "COL_WHITE"%s", message));
    }
    else if(type == MESSAGE_SAMPLE){
        return SendClientMessageStr(playerid, COLOR_DARKCYAN, str_format("Example: "COL_WHITE"%s", message));
    }
    else if(type == MESSAGE_INFO){
        return SendClientMessageStr(playerid, COLOR_AQUA, str_format("INFO: "COL_WHITE"%s", message));
    }
    else if(type == MESSAGE_WARNING){
        return SendClientMessageStr(playerid, COLOR_ORANGE, str_format("WARNING: "COL_WHITE"%s", message));
    }
    else if(type == MESSAGE_ERROR){
        return SendClientMessageStr(playerid, COLOR_ORANGERED, str_format("ERROR: "COL_WHITE"%s", message));
    }
    return SendClientMessage(playerid, -1, message);
}