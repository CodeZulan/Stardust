
#define RandomEx(%0,%1) (random(%1 - %0 + 1) + %0)

Dialog_ShowEx(playerid, style, const title[], const button1[], const button2[], const fmat[], va_args<>){
    static body[MAX_STRING];
    va_format(body, MAX_STRING, fmat, va_start<6>);

    return Dialog_Show(playerid, style, title, body, button1, button2);
}

PlayerTextDrawSetStringEx(playerid, PlayerText:text, const fmat[], va_args<>){
    static string[MAX_STRING];
    va_format(string, MAX_STRING, fmat, va_start<3>);

    return PlayerTextDrawSetString(playerid, text, string);
}

PlayerText:CreatePlayerTextDrawEx(playerid, Float:x, Float:y, const fmat[], va_args<>){
    static string[MAX_STRING];
    va_format(string, MAX_STRING, fmat, va_start<4>);

    return CreatePlayerTextDraw(playerid, x, y, string);
}