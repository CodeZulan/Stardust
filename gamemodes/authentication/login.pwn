#include <YSI_Coding\y_hooks>

#define CHECK_GET_PASSWORD      1
#define CHECK_PASSWORD          2

new
    PlayerText:Login_Box[MAX_PLAYERS][4],
    PlayerText:Login_Label[MAX_PLAYERS],
    PlayerText:Login_Password_Label[MAX_PLAYERS],
    PlayerText:Login_Password_Box[MAX_PLAYERS],
    PlayerText:Remember_Password_Button[MAX_PLAYERS],
    PlayerText:Remember_Password_Label[MAX_PLAYERS],
    PlayerText:Login_Button[MAX_PLAYERS],
    PlayerText:Login_Attempts[MAX_PLAYERS],
    PlayerText:Login_Title[MAX_PLAYERS][2],
    PlayerText:Login_Message[MAX_PLAYERS],
    PlayerText:NameChange_Button[MAX_PLAYERS],
    PlayerText:ForgotPassword_Button[MAX_PLAYERS],
    PlayerText:Exit_Button[MAX_PLAYERS];

new
    Temp_Login_Password_Value[MAX_PLAYERS][MAX_STRING],
    bool:Temp_Remember_Password_Value[MAX_PLAYERS],
    Temp_Fetched_IP[MAX_PLAYERS][MAX_STRING];

hook OnPlayerConnect(playerid){
    Login_Box[playerid][0] = CreatePlayerTextDraw(playerid, 473.000000, 131.000000, "_");
    PlayerTextDrawFont(playerid, Login_Box[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, Login_Box[playerid][0], 0.645833, 25.600006);
    PlayerTextDrawTextSize(playerid, Login_Box[playerid][0], 298.500000, 265.000000);
    PlayerTextDrawSetOutline(playerid, Login_Box[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Login_Box[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Login_Box[playerid][0], 2);
    PlayerTextDrawColor(playerid, Login_Box[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Box[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Login_Box[playerid][0], 185);
    PlayerTextDrawUseBox(playerid, Login_Box[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Login_Box[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Box[playerid][0], 0);

    Login_Box[playerid][1] = CreatePlayerTextDraw(playerid, 472.000000, 184.000000, "_");
    PlayerTextDrawFont(playerid, Login_Box[playerid][1], 0);
    PlayerTextDrawLetterSize(playerid, Login_Box[playerid][1], 1.179165, 18.300006);
    PlayerTextDrawTextSize(playerid, Login_Box[playerid][1], 279.000000, 248.500000);
    PlayerTextDrawSetOutline(playerid, Login_Box[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Login_Box[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Login_Box[playerid][1], 2);
    PlayerTextDrawColor(playerid, Login_Box[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Box[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Login_Box[playerid][1], 1296911869);
    PlayerTextDrawUseBox(playerid, Login_Box[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Login_Box[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Box[playerid][1], 0);

    Login_Box[playerid][2] = CreatePlayerTextDraw(playerid, 473.000000, 142.000000, "_");
    PlayerTextDrawFont(playerid, Login_Box[playerid][2], 0);
    PlayerTextDrawLetterSize(playerid, Login_Box[playerid][2], 1.179165, 3.300004);
    PlayerTextDrawTextSize(playerid, Login_Box[playerid][2], 279.000000, 248.500000);
    PlayerTextDrawSetOutline(playerid, Login_Box[playerid][2], 1);
    PlayerTextDrawSetShadow(playerid, Login_Box[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, Login_Box[playerid][2], 2);
    PlayerTextDrawColor(playerid, Login_Box[playerid][2], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Box[playerid][2], 255);
    PlayerTextDrawBoxColor(playerid, Login_Box[playerid][2], 1296911864);
    PlayerTextDrawUseBox(playerid, Login_Box[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, Login_Box[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Box[playerid][2], 0);

    Login_Box[playerid][3] = CreatePlayerTextDraw(playerid, 471.000000, 287.000000, "_");
    PlayerTextDrawFont(playerid, Login_Box[playerid][3], 1);
    PlayerTextDrawLetterSize(playerid, Login_Box[playerid][3], 0.224999, 3.449995);
    PlayerTextDrawTextSize(playerid, Login_Box[playerid][3], 298.500000, 131.000000);
    PlayerTextDrawSetOutline(playerid, Login_Box[playerid][3], 1);
    PlayerTextDrawSetShadow(playerid, Login_Box[playerid][3], 0);
    PlayerTextDrawAlignment(playerid, Login_Box[playerid][3], 2);
    PlayerTextDrawColor(playerid, Login_Box[playerid][3], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Box[playerid][3], 255);
    PlayerTextDrawBoxColor(playerid, Login_Box[playerid][3], 205);
    PlayerTextDrawUseBox(playerid, Login_Box[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, Login_Box[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Box[playerid][3], 0);

    Login_Label[playerid] = CreatePlayerTextDraw(playerid, 473.000000, 141.000000, "Account_Login");
    PlayerTextDrawFont(playerid, Login_Label[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Login_Label[playerid], 0.433331, 3.000000);
    PlayerTextDrawTextSize(playerid, Login_Label[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Login_Label[playerid], 0);
    PlayerTextDrawSetShadow(playerid, Login_Label[playerid], 0);
    PlayerTextDrawAlignment(playerid, Login_Label[playerid], 2);
    PlayerTextDrawColor(playerid, Login_Label[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Label[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Login_Label[playerid], 50);
    PlayerTextDrawUseBox(playerid, Login_Label[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Login_Label[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Label[playerid], 0);

    Login_Password_Label[playerid] = CreatePlayerTextDraw(playerid, 359.000000, 199.000000, "Password");
    PlayerTextDrawFont(playerid, Login_Password_Label[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Login_Password_Label[playerid], 0.304165, 2.000000);
    PlayerTextDrawTextSize(playerid, Login_Password_Label[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Login_Password_Label[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Login_Password_Label[playerid], 0);
    PlayerTextDrawAlignment(playerid, Login_Password_Label[playerid], 1);
    PlayerTextDrawColor(playerid, Login_Password_Label[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Password_Label[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Login_Password_Label[playerid], 50);
    PlayerTextDrawUseBox(playerid, Login_Password_Label[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Login_Password_Label[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Password_Label[playerid], 0);

    Login_Password_Box[playerid] = CreatePlayerTextDraw(playerid, 472.000000, 224.000000, "Enter_Your_Password");
    PlayerTextDrawFont(playerid, Login_Password_Box[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Login_Password_Box[playerid], 0.258332, 2.000000);
    PlayerTextDrawTextSize(playerid, Login_Password_Box[playerid], 16.500000, 223.000000);
    PlayerTextDrawSetOutline(playerid, Login_Password_Box[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Login_Password_Box[playerid], 0);
    PlayerTextDrawAlignment(playerid, Login_Password_Box[playerid], 2);
    PlayerTextDrawColor(playerid, Login_Password_Box[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Password_Box[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Login_Password_Box[playerid], 200);
    PlayerTextDrawUseBox(playerid, Login_Password_Box[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Login_Password_Box[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Password_Box[playerid], 1);

    Remember_Password_Button[playerid] = CreatePlayerTextDraw(playerid, 359.000000, 251.000000, "ld_pool:ball");
    PlayerTextDrawFont(playerid, Remember_Password_Button[playerid], 4);
    PlayerTextDrawLetterSize(playerid, Remember_Password_Button[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Remember_Password_Button[playerid], 17.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Remember_Password_Button[playerid], 0);
    PlayerTextDrawSetShadow(playerid, Remember_Password_Button[playerid], 0);
    PlayerTextDrawAlignment(playerid, Remember_Password_Button[playerid], 2);
    PlayerTextDrawColor(playerid, Remember_Password_Button[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Remember_Password_Button[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Remember_Password_Button[playerid], 50);
    PlayerTextDrawUseBox(playerid, Remember_Password_Button[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Remember_Password_Button[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Remember_Password_Button[playerid], 1);

    Remember_Password_Label[playerid] = CreatePlayerTextDraw(playerid, 380.000000, 252.000000, "Remember_Password?");
    PlayerTextDrawFont(playerid, Remember_Password_Label[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Remember_Password_Label[playerid], 0.195831, 1.399999);
    PlayerTextDrawTextSize(playerid, Remember_Password_Label[playerid], 400.000000, 3.000000);
    PlayerTextDrawSetOutline(playerid, Remember_Password_Label[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Remember_Password_Label[playerid], 0);
    PlayerTextDrawAlignment(playerid, Remember_Password_Label[playerid], 1);
    PlayerTextDrawColor(playerid, Remember_Password_Label[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Remember_Password_Label[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Remember_Password_Label[playerid], 50);
    PlayerTextDrawUseBox(playerid, Remember_Password_Label[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Remember_Password_Label[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Remember_Password_Label[playerid], 0);

    Login_Button[playerid] = CreatePlayerTextDraw(playerid, 471.000000, 289.000000, "Login");
    PlayerTextDrawFont(playerid, Login_Button[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Login_Button[playerid], 0.649998, 2.500000);
    PlayerTextDrawTextSize(playerid, Login_Button[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Login_Button[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Login_Button[playerid], 0);
    PlayerTextDrawAlignment(playerid, Login_Button[playerid], 2);
    PlayerTextDrawColor(playerid, Login_Button[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Button[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Login_Button[playerid], 50);
    PlayerTextDrawUseBox(playerid, Login_Button[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Login_Button[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Button[playerid], 1);

    Login_Attempts[playerid] = CreatePlayerTextDraw(playerid, 549.000000, 328.000000, "Attempts:_3");
    PlayerTextDrawFont(playerid, Login_Attempts[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Login_Attempts[playerid], 0.437500, 2.000000);
    PlayerTextDrawTextSize(playerid, Login_Attempts[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Login_Attempts[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Login_Attempts[playerid], 0);
    PlayerTextDrawAlignment(playerid, Login_Attempts[playerid], 2);
    PlayerTextDrawColor(playerid, Login_Attempts[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Attempts[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Login_Attempts[playerid], 50);
    PlayerTextDrawUseBox(playerid, Login_Attempts[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Login_Attempts[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Attempts[playerid], 0);

    Login_Title[playerid][0] = CreatePlayerTextDraw(playerid, 178.000000, 92.000000, "Stardust");
    PlayerTextDrawFont(playerid, Login_Title[playerid][0], 2);
    PlayerTextDrawLetterSize(playerid, Login_Title[playerid][0], 0.849999, 5.199997);
    PlayerTextDrawTextSize(playerid, Login_Title[playerid][0], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Login_Title[playerid][0], 3);
    PlayerTextDrawSetShadow(playerid, Login_Title[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Login_Title[playerid][0], 2);
    PlayerTextDrawColor(playerid, Login_Title[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Title[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Login_Title[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, Login_Title[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, Login_Title[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Title[playerid][0], 0);

    Login_Title[playerid][1] = CreatePlayerTextDraw(playerid, 178.000000, 131.000000, "Roleplay");
    PlayerTextDrawFont(playerid, Login_Title[playerid][1], 3);
    PlayerTextDrawLetterSize(playerid, Login_Title[playerid][1], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Login_Title[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Login_Title[playerid][1], 3);
    PlayerTextDrawSetShadow(playerid, Login_Title[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Login_Title[playerid][1], 2);
    PlayerTextDrawColor(playerid, Login_Title[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Title[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Login_Title[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, Login_Title[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, Login_Title[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Title[playerid][1], 0);

    Login_Message[playerid] = CreatePlayerTextDraw(playerid, 20.000000, 177.000000, "Hey_~g~Roi_Salvaje_~w~it's_nice_to_see_you_back!~n~login_your_account_with_your_password_to~n~continue_playing,~n~~n~_-Not_You?");
    PlayerTextDrawFont(playerid, Login_Message[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Login_Message[playerid], 0.425000, 2.599997);
    PlayerTextDrawTextSize(playerid, Login_Message[playerid], 331.500000, 19.000000);
    PlayerTextDrawSetOutline(playerid, Login_Message[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Login_Message[playerid], 0);
    PlayerTextDrawAlignment(playerid, Login_Message[playerid], 1);
    PlayerTextDrawColor(playerid, Login_Message[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Login_Message[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Login_Message[playerid], 163);
    PlayerTextDrawUseBox(playerid, Login_Message[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Login_Message[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Login_Message[playerid], 0);

    NameChange_Button[playerid] = CreatePlayerTextDraw(playerid, 65.000000, 299.000000, "Change_Name");
    PlayerTextDrawFont(playerid, NameChange_Button[playerid], 2);
    PlayerTextDrawLetterSize(playerid, NameChange_Button[playerid], 0.258332, 1.750000);
    PlayerTextDrawTextSize(playerid, NameChange_Button[playerid], 16.500000, 90.500000);
    PlayerTextDrawSetOutline(playerid, NameChange_Button[playerid], 1);
    PlayerTextDrawSetShadow(playerid, NameChange_Button[playerid], 0);
    PlayerTextDrawAlignment(playerid, NameChange_Button[playerid], 2);
    PlayerTextDrawColor(playerid, NameChange_Button[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, NameChange_Button[playerid], 255);
    PlayerTextDrawBoxColor(playerid, NameChange_Button[playerid], 200);
    PlayerTextDrawUseBox(playerid, NameChange_Button[playerid], 1);
    PlayerTextDrawSetProportional(playerid, NameChange_Button[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, NameChange_Button[playerid], 1);

    ForgotPassword_Button[playerid] = CreatePlayerTextDraw(playerid, 183.000000, 299.000000, "Forgot_Password");
    PlayerTextDrawFont(playerid, ForgotPassword_Button[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ForgotPassword_Button[playerid], 0.258332, 1.750000);
    PlayerTextDrawTextSize(playerid, ForgotPassword_Button[playerid], 16.500000, 131.000000);
    PlayerTextDrawSetOutline(playerid, ForgotPassword_Button[playerid], 1);
    PlayerTextDrawSetShadow(playerid, ForgotPassword_Button[playerid], 0);
    PlayerTextDrawAlignment(playerid, ForgotPassword_Button[playerid], 2);
    PlayerTextDrawColor(playerid, ForgotPassword_Button[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ForgotPassword_Button[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ForgotPassword_Button[playerid], 200);
    PlayerTextDrawUseBox(playerid, ForgotPassword_Button[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ForgotPassword_Button[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ForgotPassword_Button[playerid], 1);

    Exit_Button[playerid] = CreatePlayerTextDraw(playerid, 293.000000, 299.000000, "Exit");
    PlayerTextDrawFont(playerid, Exit_Button[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Exit_Button[playerid], 0.258332, 1.750000);
    PlayerTextDrawTextSize(playerid, Exit_Button[playerid], 16.500000, 76.500000);
    PlayerTextDrawSetOutline(playerid, Exit_Button[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Exit_Button[playerid], 0);
    PlayerTextDrawAlignment(playerid, Exit_Button[playerid], 2);
    PlayerTextDrawColor(playerid, Exit_Button[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Exit_Button[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Exit_Button[playerid], 200);
    PlayerTextDrawUseBox(playerid, Exit_Button[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Exit_Button[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Exit_Button[playerid], 1);
    return 1;
}

LoginScreenTD(playerid, toggle=true){
    if(toggle){
        PlayerTextDrawShow(playerid, Login_Box[playerid][0]);
        PlayerTextDrawShow(playerid, Login_Box[playerid][1]);
        PlayerTextDrawShow(playerid, Login_Box[playerid][2]);
        PlayerTextDrawShow(playerid, Login_Box[playerid][3]);
        PlayerTextDrawShow(playerid, Login_Label[playerid]);
        PlayerTextDrawShow(playerid, Login_Password_Label[playerid]);
        PlayerTextDrawShow(playerid, Login_Password_Box[playerid]);
        PlayerTextDrawShow(playerid, Remember_Password_Button[playerid]);
        PlayerTextDrawShow(playerid, Remember_Password_Label[playerid]);
        PlayerTextDrawShow(playerid, Login_Button[playerid]);
        PlayerTextDrawShow(playerid, Login_Attempts[playerid]);
        PlayerTextDrawShow(playerid, Login_Title[playerid][0]);
        PlayerTextDrawShow(playerid, Login_Title[playerid][1]);
        PlayerTextDrawShow(playerid, Login_Message[playerid]);
        PlayerTextDrawShow(playerid, NameChange_Button[playerid]);
        PlayerTextDrawShow(playerid, ForgotPassword_Button[playerid]);
        PlayerTextDrawShow(playerid, Exit_Button[playerid]);

        SelectTextDraw(playerid, COLOR_LIMEGREEN);
    }
    else{
        PlayerTextDrawHide(playerid, Login_Box[playerid][0]);
        PlayerTextDrawHide(playerid, Login_Box[playerid][1]);
        PlayerTextDrawHide(playerid, Login_Box[playerid][2]);
        PlayerTextDrawHide(playerid, Login_Box[playerid][3]);
        PlayerTextDrawHide(playerid, Login_Label[playerid]);
        PlayerTextDrawHide(playerid, Login_Password_Label[playerid]);
        PlayerTextDrawHide(playerid, Login_Password_Box[playerid]);
        PlayerTextDrawHide(playerid, Remember_Password_Button[playerid]);
        PlayerTextDrawHide(playerid, Remember_Password_Label[playerid]);
        PlayerTextDrawHide(playerid, Login_Button[playerid]);
        PlayerTextDrawHide(playerid, Login_Attempts[playerid]);
        PlayerTextDrawHide(playerid, Login_Title[playerid][0]);
        PlayerTextDrawHide(playerid, Login_Title[playerid][1]);
        PlayerTextDrawHide(playerid, Login_Message[playerid]);
        PlayerTextDrawHide(playerid, NameChange_Button[playerid]);
        PlayerTextDrawHide(playerid, ForgotPassword_Button[playerid]);
        PlayerTextDrawHide(playerid, Exit_Button[playerid]);

        CancelSelectTextDraw(playerid);
    }
}

#include <YSI_Coding\y_hooks>

hook OnPlayerConnect(playerid){
    format(Temp_Login_Password_Value[playerid], MAX_STRING, "Enter_Your_Password");
    Temp_Remember_Password_Value[playerid] = false;
    return 1;
}

forward OnPlayerFetchIP(playerid);
public OnPlayerFetchIP(playerid){
    cache_get_value_name(0, "u_ip", Temp_Fetched_IP[playerid]);
    cache_get_value_name_int(0, "u_rempass", User_Remember_Password[playerid]);

    if(!strcmp(Temp_Fetched_IP[playerid], GetPlayerIPAddress(playerid))){
        if(User_Remember_Password[playerid]){
            mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "SELECT * FROM char_info WHERE u_id = %d", User_ID[playerid]);
            mysql_tquery(SQL_Handle, SQL_Buffer, "OnPlayerLoggedIn", "i", playerid);
            return 1;
        }
    }
    LoginScreenTD(playerid);
    return 1;
}

hook OnPlayerClickPlayerTD(playerid, PlayerText:playertextid){
    if(playertextid == Login_Password_Box[playerid]){
        ShowPlayerDialog(playerid, Dialog_ID[DIALOG_LOGIN_PASSWORD_TD], DIALOG_STYLE_PASSWORD, "Registration", "Enter your account password", "Continue", "Back");
    }
    else if(playertextid == Login_Button[playerid]){
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "SELECT u_password FROM users WHERE u_id = %d", User_ID[playerid]);
        mysql_tquery(SQL_Handle, SQL_Buffer, "OnPlayerClickLogin", "i", playerid);
    }
    else if(playertextid == Remember_Password_Button[playerid]){
        if(Temp_Remember_Password_Value[playerid]){
            PlayerTextDrawHide(playerid, Remember_Password_Button[playerid]);
            PlayerTextDrawColor(playerid, Remember_Password_Button[playerid], COLOR_WHITE);
            PlayerTextDrawShow(playerid, Remember_Password_Button[playerid]);
            Temp_Remember_Password_Value[playerid] = false;
        }
        else{
            PlayerTextDrawHide(playerid, Remember_Password_Button[playerid]);
            PlayerTextDrawColor(playerid, Remember_Password_Button[playerid], COLOR_LIME);
            PlayerTextDrawShow(playerid, Remember_Password_Button[playerid]);
            Temp_Remember_Password_Value[playerid] = true;
        }
    }
    return 1;
}

forward OnPlayerClickLogin(playerid);
public OnPlayerClickLogin(playerid){
    static hashed_password[MAX_STRING];
    cache_get_value_name(0, "u_password", hashed_password);
    bcrypt_check(Temp_Login_Password_Value[playerid], hashed_password, "OnLoginPasswordCheck", "i", playerid);
}

forward OnLoginPasswordCheck(playerid);
public OnLoginPasswordCheck(playerid){
    if(bcrypt_is_equal()){
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "SELECT * FROM char_info WHERE u_id = %d", User_ID[playerid]);
        mysql_tquery(SQL_Handle, SQL_Buffer, "OnPlayerLoggedIn", "i", playerid);
    }
}

forward OnPlayerLoggedIn(playerid);
public OnPlayerLoggedIn(playerid){
    if(Temp_Remember_Password_Value[playerid]){
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "UPDATE users SET u_rempass = %d WHERE u_id = %d", Temp_Remember_Password_Value[playerid], User_ID[playerid]);
        mysql_tquery(SQL_Handle, SQL_Buffer);
    }

    SetPVarInt(playerid, "IsPlayerLoggingIn", 0);
    LoginScreenTD(playerid, false);

    cache_get_value_name_float(0, "char_pos_x", Character_Position[playerid][0]);
    cache_get_value_name_float(0, "char_pos_y", Character_Position[playerid][1]);
    cache_get_value_name_float(0, "char_pos_z", Character_Position[playerid][2]);
    cache_get_value_name_float(0, "char_pos_a", Character_Position[playerid][3]);
    cache_get_value_name_int(0, "char_skin", Character_Skin[playerid]);

    SetPlayerPos(playerid, Character_Position[playerid][0], Character_Position[playerid][1], Character_Position[playerid][2]);
    SetPlayerFacingAngle(playerid, Character_Position[playerid][3]);
    SetPlayerInterior(playerid, 0);
    SetPlayerVirtualWorld(playerid, 0);

    SetPlayerSkin(playerid, Character_Skin[playerid]);

    SetCameraBehindPlayer(playerid);
    TogglePlayerControllable(playerid, true);

    SetPVarInt(playerid, "IsPlayerLoggedIn", 1);
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == Dialog_ID[DIALOG_LOGIN_PASSWORD_TD]){
        static body[MAX_STRING];
        if(response){
            if(!strlen(inputtext)){
                format(body, MAX_STRING, ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your account password.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Input for account password is empty.", inputtext);
                ShowPlayerDialog(playerid, Dialog_ID[DIALOG_MISC], DIALOG_STYLE_MSGBOX, "Account Login Error!", body, "Back", "");
                return 1;
            }
            if(strlen(inputtext) > 16){
                format(body, MAX_STRING, ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your account password.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Input for account password is too long.", HidePassword(strlen(inputtext)));
                ShowPlayerDialog(playerid, Dialog_ID[DIALOG_MISC], DIALOG_STYLE_MSGBOX, "Account Login Error!", body, "Back", "");
                return 1;
            }
            PlayerTextDrawSetString(playerid, Login_Password_Box[playerid], HidePassword(strlen(inputtext)));
            format(Temp_Login_Password_Value[playerid], MAX_STRING, inputtext);
        }
    }
    return 1;
}