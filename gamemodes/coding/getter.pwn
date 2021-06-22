#define POS_X   1
#define POS_Y   2
#define POS_Z   3
#define POS_A   4

GetPlayerNameEx(playerid, underscore = true){
    static name[MAX_PLAYER_NAME+1];
    GetPlayerName(playerid, name, MAX_PLAYER_NAME+1);
    if(!underscore){
        strreplace(name, "_", " ");
    }
    return name;
}

GetRandomCode(length){
    static string[2], code[MAX_STRING];
    format(code, MAX_STRING, "");
    for(new i; i < length; i++){
        new alphanum = random(2);
        format(string, sizeof(string), "%c", alphanum ? RandomEx('A', 'Z') : RandomEx('1', '9'));
        strcat(code, string);
    }
    return code;
}

Float:GetPlayerPosition(playerid, dimension){
    static Float:x, Float:y, Float:z, Float:a;
    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);
    if(dimension == POS_X){
        return x;
    }
    else if(dimension == POS_Y){
        return y;
    }
    else if(dimension == POS_Z){
        return z;
    }
    else if(dimension == POS_A){
        return a;
    }
    return Float:0;
}

GetPlayerIPAddress(playerid){
    static ip[MAX_STRING];
    GetPlayerIp(playerid, ip);
    return ip;
}

GetDateFormatted(){
    new
        Year,
        Month,
        Day;
    
    new
        Date[16];

    getdate(Year, Month, Day);
    format(Date, 16, "%02d/%02d/%02d", Day, Month, Year);
    return Date;
}

GetTimeFormatted(){
    new
        Hours,
        Minutes;
    
    new
        Time[16];

    gettime(Hours, Minutes);
    format(Time, 16, "%02d:%02d", Hours, Minutes);
    return Time;
}
