#include <YSI_Coding\y_hooks>

new
    PlayerText:Form_Background[MAX_PLAYERS],
    PlayerText:Title_Background[MAX_PLAYERS],
    PlayerText:Information_Background[MAX_PLAYERS],
    PlayerText:Title[MAX_PLAYERS],
    PlayerText:Password_Box[MAX_PLAYERS],
    PlayerText:Confirm_Password_Box[MAX_PLAYERS],
    PlayerText:Email_Box[MAX_PLAYERS],
    PlayerText:Captcha_Background[MAX_PLAYERS],
    PlayerText:Password_Label[MAX_PLAYERS],
    PlayerText:Confirm_Password_Label[MAX_PLAYERS],
    PlayerText:Email_Label[MAX_PLAYERS],
    PlayerText:Captcha_Label[MAX_PLAYERS],
    PlayerText:Code_Label[MAX_PLAYERS],
    PlayerText:Code_Box[MAX_PLAYERS],
    PlayerText:Back_Button_TD[MAX_PLAYERS],
    PlayerText:Register_Button_TD[MAX_PLAYERS],
    PlayerText:Password_Strength[MAX_PLAYERS],
    PlayerText:Password_Match[MAX_PLAYERS];

new
    Temp_Register_Password_Value[MAX_PLAYERS][MAX_STRING],
    Temp_Confirm_Password_Value[MAX_PLAYERS][MAX_STRING],
    Temp_Email_Value[MAX_PLAYERS][MAX_STRING],
    Temp_Captcha_Value[MAX_PLAYERS][2][MAX_STRING];

new
    PlayerText:Welcome_Title[MAX_PLAYERS][3],
    PlayerText:Welcome_Credits[MAX_PLAYERS][3],
    PlayerText:Welcome_Credits_Name[MAX_PLAYERS][3];

static Cutscene_Plane[MAX_PLAYERS];

hook OnPlayerConnect(playerid){
    format(Temp_Captcha_Value[playerid][0], MAX_STRING, GetRandomCode(10));

    Form_Background[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 122.000000, "_");
    PlayerTextDrawFont(playerid, Form_Background[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Form_Background[playerid], 0.600000, 35.399993);
    PlayerTextDrawTextSize(playerid, Form_Background[playerid], 0.000000, 223.500000);
    PlayerTextDrawSetOutline(playerid, Form_Background[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Form_Background[playerid], 0);
    PlayerTextDrawAlignment(playerid, Form_Background[playerid], 2);
    PlayerTextDrawColor(playerid, Form_Background[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Form_Background[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Form_Background[playerid], -2016478566);
    PlayerTextDrawUseBox(playerid, Form_Background[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Form_Background[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Form_Background[playerid], 0);

    Title_Background[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 130.000000, "_");
    PlayerTextDrawFont(playerid, Title_Background[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Title_Background[playerid], 0.600000, 4.750000);
    PlayerTextDrawTextSize(playerid, Title_Background[playerid], 298.500000, 213.500000);
    PlayerTextDrawSetOutline(playerid, Title_Background[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Title_Background[playerid], 0);
    PlayerTextDrawAlignment(playerid, Title_Background[playerid], 2);
    PlayerTextDrawColor(playerid, Title_Background[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Title_Background[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Title_Background[playerid], -2016478465);
    PlayerTextDrawUseBox(playerid, Title_Background[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Title_Background[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Title_Background[playerid], 0);

    Information_Background[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 181.000000, "_");
    PlayerTextDrawFont(playerid, Information_Background[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Information_Background[playerid], 0.600000, 23.700002);
    PlayerTextDrawTextSize(playerid, Information_Background[playerid], 298.500000, 213.500000);
    PlayerTextDrawSetOutline(playerid, Information_Background[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Information_Background[playerid], 0);
    PlayerTextDrawAlignment(playerid, Information_Background[playerid], 2);
    PlayerTextDrawColor(playerid, Information_Background[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Information_Background[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Information_Background[playerid], -2016478465);
    PlayerTextDrawUseBox(playerid, Information_Background[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Information_Background[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Information_Background[playerid], 0);

    Title[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 134.000000, "Account_Registration");
    PlayerTextDrawFont(playerid, Title[playerid], 3);
    PlayerTextDrawLetterSize(playerid, Title[playerid], 0.520833, 2.000000);
    PlayerTextDrawTextSize(playerid, Title[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Title[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Title[playerid], 0);
    PlayerTextDrawAlignment(playerid, Title[playerid], 2);
    PlayerTextDrawColor(playerid, Title[playerid], 2094792959);
    PlayerTextDrawBackgroundColor(playerid, Title[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Title[playerid], 50);
    PlayerTextDrawUseBox(playerid, Title[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Title[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Title[playerid], 0);

    static name[MAX_PLAYER_NAME+1];
    format(name, MAX_STRING, "For_%s", Temp_Name_Value[playerid]);
    Subtitle[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 154.000000, name);
    PlayerTextDrawFont(playerid, Subtitle[playerid], 0);
    PlayerTextDrawLetterSize(playerid, Subtitle[playerid], 0.404166, 1.500000);
    PlayerTextDrawTextSize(playerid, Subtitle[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Subtitle[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Subtitle[playerid], 0);
    PlayerTextDrawAlignment(playerid, Subtitle[playerid], 2);
    PlayerTextDrawColor(playerid, Subtitle[playerid], -2686721);
    PlayerTextDrawBackgroundColor(playerid, Subtitle[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Subtitle[playerid], 50);
    PlayerTextDrawUseBox(playerid, Subtitle[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Subtitle[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Subtitle[playerid], 0);

    Password_Box[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 210.000000, "Enter_Your_Password");
    PlayerTextDrawFont(playerid, Password_Box[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Password_Box[playerid], 0.150000, 2.350001);
    PlayerTextDrawTextSize(playerid, Password_Box[playerid], 298.500000, 209.500000);
    PlayerTextDrawSetOutline(playerid, Password_Box[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Password_Box[playerid], 0);
    PlayerTextDrawAlignment(playerid, Password_Box[playerid], 2);
    PlayerTextDrawColor(playerid, Password_Box[playerid], -121);
    PlayerTextDrawBackgroundColor(playerid, Password_Box[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Password_Box[playerid], 135);
    PlayerTextDrawUseBox(playerid, Password_Box[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Password_Box[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Password_Box[playerid], 1);

    Confirm_Password_Box[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 256.000000, "Confirm_Your_Password");
    PlayerTextDrawFont(playerid, Confirm_Password_Box[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Confirm_Password_Box[playerid], 0.150000, 2.349998);
    PlayerTextDrawTextSize(playerid, Confirm_Password_Box[playerid], 298.500000, 209.500000);
    PlayerTextDrawSetOutline(playerid, Confirm_Password_Box[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Confirm_Password_Box[playerid], 0);
    PlayerTextDrawAlignment(playerid, Confirm_Password_Box[playerid], 2);
    PlayerTextDrawColor(playerid, Confirm_Password_Box[playerid], -121);
    PlayerTextDrawBackgroundColor(playerid, Confirm_Password_Box[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Confirm_Password_Box[playerid], 135);
    PlayerTextDrawUseBox(playerid, Confirm_Password_Box[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Confirm_Password_Box[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Confirm_Password_Box[playerid], 1);

    Email_Box[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 303.000000, "Enter_Your_Email");
    PlayerTextDrawFont(playerid, Email_Box[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Email_Box[playerid], 0.150000, 2.350001);
    PlayerTextDrawTextSize(playerid, Email_Box[playerid], 298.500000, 209.500000);
    PlayerTextDrawSetOutline(playerid, Email_Box[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Email_Box[playerid], 0);
    PlayerTextDrawAlignment(playerid, Email_Box[playerid], 2);
    PlayerTextDrawColor(playerid, Email_Box[playerid], -121);
    PlayerTextDrawBackgroundColor(playerid, Email_Box[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Email_Box[playerid], 135);
    PlayerTextDrawUseBox(playerid, Email_Box[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Email_Box[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Email_Box[playerid], 1);

    Captcha_Background[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 330.000000, "_");
    PlayerTextDrawFont(playerid, Captcha_Background[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Captcha_Background[playerid], 0.600000, 6.900001);
    PlayerTextDrawTextSize(playerid, Captcha_Background[playerid], 298.500000, 209.500000);
    PlayerTextDrawSetOutline(playerid, Captcha_Background[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Captcha_Background[playerid], 0);
    PlayerTextDrawAlignment(playerid, Captcha_Background[playerid], 2);
    PlayerTextDrawColor(playerid, Captcha_Background[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Captcha_Background[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Captcha_Background[playerid], 135);
    PlayerTextDrawUseBox(playerid, Captcha_Background[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Captcha_Background[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Captcha_Background[playerid], 0);

    Password_Label[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 190.000000, "Password");
    PlayerTextDrawFont(playerid, Password_Label[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Password_Label[playerid], 0.400000, 2.000000);
    PlayerTextDrawTextSize(playerid, Password_Label[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Password_Label[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Password_Label[playerid], 0);
    PlayerTextDrawAlignment(playerid, Password_Label[playerid], 2);
    PlayerTextDrawColor(playerid, Password_Label[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Password_Label[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Password_Label[playerid], 50);
    PlayerTextDrawUseBox(playerid, Password_Label[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Password_Label[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Password_Label[playerid], 0);

    Confirm_Password_Label[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 234.000000, "Confirm_Password");
    PlayerTextDrawFont(playerid, Confirm_Password_Label[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Confirm_Password_Label[playerid], 0.400000, 2.000000);
    PlayerTextDrawTextSize(playerid, Confirm_Password_Label[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Confirm_Password_Label[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Confirm_Password_Label[playerid], 0);
    PlayerTextDrawAlignment(playerid, Confirm_Password_Label[playerid], 2);
    PlayerTextDrawColor(playerid, Confirm_Password_Label[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Confirm_Password_Label[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Confirm_Password_Label[playerid], 50);
    PlayerTextDrawUseBox(playerid, Confirm_Password_Label[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Confirm_Password_Label[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Confirm_Password_Label[playerid], 0);

    Email_Label[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 279.000000, "Email_Address_(Optional)");
    PlayerTextDrawFont(playerid, Email_Label[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Email_Label[playerid], 0.295833, 2.000000);
    PlayerTextDrawTextSize(playerid, Email_Label[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Email_Label[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Email_Label[playerid], 0);
    PlayerTextDrawAlignment(playerid, Email_Label[playerid], 2);
    PlayerTextDrawColor(playerid, Email_Label[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Email_Label[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Email_Label[playerid], 50);
    PlayerTextDrawUseBox(playerid, Email_Label[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Email_Label[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Email_Label[playerid], 0);

    Captcha_Label[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 325.000000, "CAPTCHA");
    PlayerTextDrawFont(playerid, Captcha_Label[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Captcha_Label[playerid], 0.387499, 1.700000);
    PlayerTextDrawTextSize(playerid, Captcha_Label[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Captcha_Label[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Captcha_Label[playerid], 0);
    PlayerTextDrawAlignment(playerid, Captcha_Label[playerid], 2);
    PlayerTextDrawColor(playerid, Captcha_Label[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Captcha_Label[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Captcha_Label[playerid], 50);
    PlayerTextDrawUseBox(playerid, Captcha_Label[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Captcha_Label[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Captcha_Label[playerid], 0);

    Code_Label[playerid] = CreatePlayerTextDrawEx(playerid, 319.000000, 339.000000, "Enter:_%s", Temp_Captcha_Value[playerid][0]);
    PlayerTextDrawFont(playerid, Code_Label[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Code_Label[playerid], 0.387499, 1.700000);
    PlayerTextDrawTextSize(playerid, Code_Label[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Code_Label[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Code_Label[playerid], 0);
    PlayerTextDrawAlignment(playerid, Code_Label[playerid], 2);
    PlayerTextDrawColor(playerid, Code_Label[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Code_Label[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Code_Label[playerid], 50);
    PlayerTextDrawUseBox(playerid, Code_Label[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Code_Label[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Code_Label[playerid], 0);

    Code_Box[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 358.000000, "Enter_Captcha");
    PlayerTextDrawFont(playerid, Code_Box[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Code_Box[playerid], 0.500000, 3.000000);
    PlayerTextDrawTextSize(playerid, Code_Box[playerid], 298.500000, 195.500000);
    PlayerTextDrawSetOutline(playerid, Code_Box[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Code_Box[playerid], 0);
    PlayerTextDrawAlignment(playerid, Code_Box[playerid], 2);
    PlayerTextDrawColor(playerid, Code_Box[playerid], -157);
    PlayerTextDrawBackgroundColor(playerid, Code_Box[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Code_Box[playerid], 135);
    PlayerTextDrawUseBox(playerid, Code_Box[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Code_Box[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Code_Box[playerid], 1);

    Back_Button_TD[playerid] = CreatePlayerTextDraw(playerid, 265.000000, 409.000000, "Back");
    PlayerTextDrawFont(playerid, Back_Button_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Back_Button_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Back_Button_TD[playerid], 406.000000, 61.500000);
    PlayerTextDrawSetOutline(playerid, Back_Button_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Back_Button_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Back_Button_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Back_Button_TD[playerid], 1687547391);
    PlayerTextDrawBackgroundColor(playerid, Back_Button_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Back_Button_TD[playerid], 1687547361);
    PlayerTextDrawUseBox(playerid, Back_Button_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Back_Button_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Back_Button_TD[playerid], 1);

    Register_Button_TD[playerid] = CreatePlayerTextDraw(playerid, 355.000000, 409.000000, "Register");
    PlayerTextDrawFont(playerid, Register_Button_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Register_Button_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Register_Button_TD[playerid], 406.000000, 102.500000);
    PlayerTextDrawSetOutline(playerid, Register_Button_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Register_Button_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Register_Button_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Register_Button_TD[playerid], 1687547391);
    PlayerTextDrawBackgroundColor(playerid, Register_Button_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Register_Button_TD[playerid], 1687547361);
    PlayerTextDrawUseBox(playerid, Register_Button_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Register_Button_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Register_Button_TD[playerid], 1);

    Character_Preview_TD2[playerid] = CreatePlayerTextDraw(playerid, 157.000000, 124.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, Character_Preview_TD2[playerid], 5);
    PlayerTextDrawLetterSize(playerid, Character_Preview_TD2[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Character_Preview_TD2[playerid], 112.500000, 150.000000);
    PlayerTextDrawSetOutline(playerid, Character_Preview_TD2[playerid], 0);
    PlayerTextDrawSetShadow(playerid, Character_Preview_TD2[playerid], 0);
    PlayerTextDrawAlignment(playerid, Character_Preview_TD2[playerid], 1);
    PlayerTextDrawColor(playerid, Character_Preview_TD2[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Character_Preview_TD2[playerid], 0);
    PlayerTextDrawBoxColor(playerid, Character_Preview_TD2[playerid], 0);
    PlayerTextDrawUseBox(playerid, Character_Preview_TD2[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Character_Preview_TD2[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Character_Preview_TD2[playerid], 0);
    PlayerTextDrawSetPreviewModel(playerid, Character_Preview_TD2[playerid], Temp_Skin_Value[playerid]);
    PlayerTextDrawSetPreviewRot(playerid, Character_Preview_TD2[playerid], -10.000000, 0.000000, -20.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, Character_Preview_TD2[playerid], 1, 1);

    Password_Strength[playerid] = CreatePlayerTextDraw(playerid, 399.000000, 216.000000, "Weak");
    PlayerTextDrawFont(playerid, Password_Strength[playerid], 3);
    PlayerTextDrawLetterSize(playerid, Password_Strength[playerid], 0.212500, 1.000000);
    PlayerTextDrawTextSize(playerid, Password_Strength[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Password_Strength[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Password_Strength[playerid], 0);
    PlayerTextDrawAlignment(playerid, Password_Strength[playerid], 2);
    PlayerTextDrawColor(playerid, Password_Strength[playerid], COLOR_RED);
    PlayerTextDrawBackgroundColor(playerid, Password_Strength[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Password_Strength[playerid], 50);
    PlayerTextDrawUseBox(playerid, Password_Strength[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Password_Strength[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Password_Strength[playerid], 0);

    Password_Match[playerid] = CreatePlayerTextDraw(playerid, 400.000000, 261.000000, "Not_Match");
    PlayerTextDrawFont(playerid, Password_Match[playerid], 3);
    PlayerTextDrawLetterSize(playerid, Password_Match[playerid], 0.212500, 1.000000);
    PlayerTextDrawTextSize(playerid, Password_Match[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Password_Match[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Password_Match[playerid], 0);
    PlayerTextDrawAlignment(playerid, Password_Match[playerid], 2);
    PlayerTextDrawColor(playerid, Password_Match[playerid], COLOR_RED);
    PlayerTextDrawBackgroundColor(playerid, Password_Match[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Password_Match[playerid], 50);
    PlayerTextDrawUseBox(playerid, Password_Match[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Password_Match[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Password_Match[playerid], 0);

    Welcome_Title[playerid][0] = CreatePlayerTextDraw(playerid, 309.000000, 186.000000, "Welcome_to");
    PlayerTextDrawFont(playerid, Welcome_Title[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, Welcome_Title[playerid][0], 0.391665, 1.450000);
    PlayerTextDrawTextSize(playerid, Welcome_Title[playerid][0], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Welcome_Title[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Welcome_Title[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Welcome_Title[playerid][0], 2);
    PlayerTextDrawColor(playerid, Welcome_Title[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, Welcome_Title[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Welcome_Title[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, Welcome_Title[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, Welcome_Title[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Welcome_Title[playerid][0], 0);

    Welcome_Title[playerid][1] = CreatePlayerTextDraw(playerid, 306.000000, 203.000000, "Stardust");
    PlayerTextDrawFont(playerid, Welcome_Title[playerid][1], 3);
    PlayerTextDrawLetterSize(playerid, Welcome_Title[playerid][1], 1.254168, 4.550001);
    PlayerTextDrawTextSize(playerid, Welcome_Title[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Welcome_Title[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Welcome_Title[playerid][1], 1);
    PlayerTextDrawAlignment(playerid, Welcome_Title[playerid][1], 2);
    PlayerTextDrawColor(playerid, Welcome_Title[playerid][1], -764862721);
    PlayerTextDrawBackgroundColor(playerid, Welcome_Title[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Welcome_Title[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, Welcome_Title[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, Welcome_Title[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Welcome_Title[playerid][1], 0);

    Welcome_Title[playerid][2] = CreatePlayerTextDraw(playerid, 367.000000, 230.000000, "Roleplay");
    PlayerTextDrawFont(playerid, Welcome_Title[playerid][2], 0);
    PlayerTextDrawLetterSize(playerid, Welcome_Title[playerid][2], 1.287503, 3.699999);
    PlayerTextDrawTextSize(playerid, Welcome_Title[playerid][2], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Welcome_Title[playerid][2], 1);
    PlayerTextDrawSetShadow(playerid, Welcome_Title[playerid][2], 1);
    PlayerTextDrawAlignment(playerid, Welcome_Title[playerid][2], 2);
    PlayerTextDrawColor(playerid, Welcome_Title[playerid][2], -2686721);
    PlayerTextDrawBackgroundColor(playerid, Welcome_Title[playerid][2], 255);
    PlayerTextDrawBoxColor(playerid, Welcome_Title[playerid][2], 50);
    PlayerTextDrawUseBox(playerid, Welcome_Title[playerid][2], 0);
    PlayerTextDrawSetProportional(playerid, Welcome_Title[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, Welcome_Title[playerid][2], 0);

    Welcome_Credits[playerid][0] = CreatePlayerTextDraw(playerid, 182.000000, 303.000000, "Development_Team");
    PlayerTextDrawFont(playerid, Welcome_Credits[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, Welcome_Credits[playerid][0], 0.308333, 2.399997);
    PlayerTextDrawTextSize(playerid, Welcome_Credits[playerid][0], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Welcome_Credits[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Welcome_Credits[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Welcome_Credits[playerid][0], 2);
    PlayerTextDrawColor(playerid, Welcome_Credits[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, Welcome_Credits[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Welcome_Credits[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, Welcome_Credits[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, Welcome_Credits[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Welcome_Credits[playerid][0], 0);

    Welcome_Credits_Name[playerid][0] = CreatePlayerTextDraw(playerid, 180.000000, 326.000000, "CodeZulan");
    PlayerTextDrawFont(playerid, Welcome_Credits_Name[playerid][0], 2);
    PlayerTextDrawLetterSize(playerid, Welcome_Credits_Name[playerid][0], 0.262499, 2.000000);
    PlayerTextDrawTextSize(playerid, Welcome_Credits_Name[playerid][0], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Welcome_Credits_Name[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Welcome_Credits_Name[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Welcome_Credits_Name[playerid][0], 2);
    PlayerTextDrawColor(playerid, Welcome_Credits_Name[playerid][0], 16711935);
    PlayerTextDrawBackgroundColor(playerid, Welcome_Credits_Name[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Welcome_Credits_Name[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, Welcome_Credits_Name[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, Welcome_Credits_Name[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Welcome_Credits_Name[playerid][0], 0);

    Welcome_Credits[playerid][1] = CreatePlayerTextDraw(playerid, 318.000000, 303.000000, "Administration_Team");
    PlayerTextDrawFont(playerid, Welcome_Credits[playerid][1], 1);
    PlayerTextDrawLetterSize(playerid, Welcome_Credits[playerid][1], 0.308333, 2.399997);
    PlayerTextDrawTextSize(playerid, Welcome_Credits[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Welcome_Credits[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Welcome_Credits[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Welcome_Credits[playerid][1], 2);
    PlayerTextDrawColor(playerid, Welcome_Credits[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, Welcome_Credits[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Welcome_Credits[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, Welcome_Credits[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, Welcome_Credits[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Welcome_Credits[playerid][1], 0);

    Welcome_Credits_Name[playerid][1] = CreatePlayerTextDraw(playerid, 319.000000, 326.000000, "CodeZulan");
    PlayerTextDrawFont(playerid, Welcome_Credits_Name[playerid][1], 2);
    PlayerTextDrawLetterSize(playerid, Welcome_Credits_Name[playerid][1], 0.262499, 2.000000);
    PlayerTextDrawTextSize(playerid, Welcome_Credits_Name[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Welcome_Credits_Name[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Welcome_Credits_Name[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Welcome_Credits_Name[playerid][1], 2);
    PlayerTextDrawColor(playerid, Welcome_Credits_Name[playerid][1], 16711935);
    PlayerTextDrawBackgroundColor(playerid, Welcome_Credits_Name[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Welcome_Credits_Name[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, Welcome_Credits_Name[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, Welcome_Credits_Name[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Welcome_Credits_Name[playerid][1], 0);

    Welcome_Credits[playerid][2] = CreatePlayerTextDraw(playerid, 458.000000, 303.000000, "Management_Team");
    PlayerTextDrawFont(playerid, Welcome_Credits[playerid][2], 1);
    PlayerTextDrawLetterSize(playerid, Welcome_Credits[playerid][2], 0.308333, 2.399997);
    PlayerTextDrawTextSize(playerid, Welcome_Credits[playerid][2], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Welcome_Credits[playerid][2], 1);
    PlayerTextDrawSetShadow(playerid, Welcome_Credits[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, Welcome_Credits[playerid][2], 2);
    PlayerTextDrawColor(playerid, Welcome_Credits[playerid][2], -1);
    PlayerTextDrawBackgroundColor(playerid, Welcome_Credits[playerid][2], 255);
    PlayerTextDrawBoxColor(playerid, Welcome_Credits[playerid][2], 50);
    PlayerTextDrawUseBox(playerid, Welcome_Credits[playerid][2], 0);
    PlayerTextDrawSetProportional(playerid, Welcome_Credits[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, Welcome_Credits[playerid][2], 0);

    Welcome_Credits_Name[playerid][2] = CreatePlayerTextDraw(playerid, 459.000000, 326.000000, "CodeZulan");
    PlayerTextDrawFont(playerid, Welcome_Credits_Name[playerid][2], 2);
    PlayerTextDrawLetterSize(playerid, Welcome_Credits_Name[playerid][2], 0.262499, 2.000000);
    PlayerTextDrawTextSize(playerid, Welcome_Credits_Name[playerid][2], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Welcome_Credits_Name[playerid][2], 1);
    PlayerTextDrawSetShadow(playerid, Welcome_Credits_Name[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, Welcome_Credits_Name[playerid][2], 2);
    PlayerTextDrawColor(playerid, Welcome_Credits_Name[playerid][2], 16711935);
    PlayerTextDrawBackgroundColor(playerid, Welcome_Credits_Name[playerid][2], 255);
    PlayerTextDrawBoxColor(playerid, Welcome_Credits_Name[playerid][2], 50);
    PlayerTextDrawUseBox(playerid, Welcome_Credits_Name[playerid][2], 0);
    PlayerTextDrawSetProportional(playerid, Welcome_Credits_Name[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, Welcome_Credits_Name[playerid][2], 0);
    return 1;
}

AccountRegistrationTD(playerid, toggle=true){
    if(toggle){
        PlayerTextDrawShow(playerid, Form_Background[playerid]);
        PlayerTextDrawShow(playerid, Title_Background[playerid]);
        PlayerTextDrawShow(playerid, Information_Background[playerid]);
        PlayerTextDrawShow(playerid, Title[playerid]);
        PlayerTextDrawShow(playerid, Subtitle[playerid]);
        PlayerTextDrawShow(playerid, Password_Box[playerid]);
        PlayerTextDrawShow(playerid, Confirm_Password_Box[playerid]);
        PlayerTextDrawShow(playerid, Email_Box[playerid]);
        PlayerTextDrawShow(playerid, Captcha_Background[playerid]);
        PlayerTextDrawShow(playerid, Password_Label[playerid]);
        PlayerTextDrawShow(playerid, Confirm_Password_Label[playerid]);
        PlayerTextDrawShow(playerid, Email_Label[playerid]);
        PlayerTextDrawShow(playerid, Captcha_Label[playerid]);
        PlayerTextDrawShow(playerid, Code_Label[playerid]);
        PlayerTextDrawShow(playerid, Code_Box[playerid]);
        PlayerTextDrawShow(playerid, Back_Button_TD[playerid]);
        PlayerTextDrawShow(playerid, Register_Button_TD[playerid]);
        PlayerTextDrawShow(playerid, Character_Preview_TD2[playerid]);
        PlayerTextDrawShow(playerid, Password_Strength[playerid]);
        PlayerTextDrawShow(playerid, Password_Match[playerid]);

        SelectTextDraw(playerid, COLOR_ORANGE);
    }
    else{
        PlayerTextDrawHide(playerid, Form_Background[playerid]);
        PlayerTextDrawHide(playerid, Title_Background[playerid]);
        PlayerTextDrawHide(playerid, Information_Background[playerid]);
        PlayerTextDrawHide(playerid, Title[playerid]);
        PlayerTextDrawHide(playerid, Subtitle[playerid]);
        PlayerTextDrawHide(playerid, Password_Box[playerid]);
        PlayerTextDrawHide(playerid, Confirm_Password_Box[playerid]);
        PlayerTextDrawHide(playerid, Email_Box[playerid]);
        PlayerTextDrawHide(playerid, Captcha_Background[playerid]);
        PlayerTextDrawHide(playerid, Password_Label[playerid]);
        PlayerTextDrawHide(playerid, Confirm_Password_Label[playerid]);
        PlayerTextDrawHide(playerid, Email_Label[playerid]);
        PlayerTextDrawHide(playerid, Captcha_Label[playerid]);
        PlayerTextDrawHide(playerid, Code_Label[playerid]);
        PlayerTextDrawHide(playerid, Code_Box[playerid]);
        PlayerTextDrawHide(playerid, Back_Button_TD[playerid]);
        PlayerTextDrawHide(playerid, Register_Button_TD[playerid]);
        PlayerTextDrawHide(playerid, Character_Preview_TD2[playerid]);
        PlayerTextDrawHide(playerid, Password_Strength[playerid]);
        PlayerTextDrawHide(playerid, Password_Match[playerid]);

        CancelSelectTextDraw(playerid);
    }
}

WelcomeScreenTD(playerid, toggle=true){
    if(toggle){
        PlayerTextDrawShow(playerid, Welcome_Title[playerid][0]);
        PlayerTextDrawShow(playerid, Welcome_Title[playerid][1]);
        PlayerTextDrawShow(playerid, Welcome_Title[playerid][2]);
        PlayerTextDrawShow(playerid, Welcome_Credits[playerid][0]);
        PlayerTextDrawShow(playerid, Welcome_Credits[playerid][1]);
        PlayerTextDrawShow(playerid, Welcome_Credits[playerid][2]);
        PlayerTextDrawShow(playerid, Welcome_Credits_Name[playerid][0]);
        PlayerTextDrawShow(playerid, Welcome_Credits_Name[playerid][1]);
        PlayerTextDrawShow(playerid, Welcome_Credits_Name[playerid][2]);
    }
    else{
        PlayerTextDrawHide(playerid, Welcome_Title[playerid][0]);
        PlayerTextDrawHide(playerid, Welcome_Title[playerid][1]);
        PlayerTextDrawHide(playerid, Welcome_Title[playerid][2]);
        PlayerTextDrawHide(playerid, Welcome_Credits[playerid][0]);
        PlayerTextDrawHide(playerid, Welcome_Credits[playerid][1]);
        PlayerTextDrawHide(playerid, Welcome_Credits[playerid][2]);
        PlayerTextDrawHide(playerid, Welcome_Credits_Name[playerid][0]);
        PlayerTextDrawHide(playerid, Welcome_Credits_Name[playerid][1]);
        PlayerTextDrawHide(playerid, Welcome_Credits_Name[playerid][2]);
    }
}

#include <YSI_Coding\y_hooks>

hook OnPlayerConnect(playerid){
    format(Temp_Register_Password_Value[playerid], MAX_STRING, "Enter_Your_Password");
    format(Temp_Confirm_Password_Value[playerid], MAX_STRING, "Confirm_Your_Password");
    format(Temp_Email_Value[playerid], MAX_STRING, "Enter_Your_Email");
    format(Temp_Captcha_Value[playerid][1], MAX_STRING, "Enter_Captcha");
    return 1;
}

hook OnPlayerClickPlayerTD(playerid, PlayerText:playertextid){
    if(playertextid == Password_Box[playerid]){
        inline OnPlayerEnterPassword(response, listitem, string:inputtext[]){
            #pragma unused listitem
            if(response){
                new strength;
                if(strlen(inputtext) < 5){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Account Registration Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your account password.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Password is too short", HidePassword(strlen(inputtext), "*"));
                    return 1;
                }
                if(strlen(inputtext) > 16){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Account Registration Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your account password.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Password is too long", HidePassword(strlen(inputtext), "*"));
                    return 1;
                }
                strength += strlen(inputtext);
                if(HasNumeric(inputtext) && !IsNumeric(inputtext)){
                    strength += 2;
                }
                if(HasCharacters(inputtext)){
                    strength += 3;
                }
                if(strength > 15){
                    PlayerTextDrawHide(playerid, Password_Strength[playerid]);
                    PlayerTextDrawSetString(playerid, Password_Strength[playerid], "Very_Strong");
                    PlayerTextDrawColor(playerid, Password_Strength[playerid], COLOR_DARKGREEN);
                    PlayerTextDrawShow(playerid, Password_Strength[playerid]);
                }
                else if(strength > 10 && strength <= 15){
                    PlayerTextDrawHide(playerid, Password_Strength[playerid]);
                    PlayerTextDrawSetString(playerid, Password_Strength[playerid], "Strong");
                    PlayerTextDrawColor(playerid, Password_Strength[playerid], COLOR_LIMEGREEN);
                    PlayerTextDrawShow(playerid, Password_Strength[playerid]);
                }
                else{
                    PlayerTextDrawHide(playerid, Password_Strength[playerid]);
                    PlayerTextDrawSetString(playerid, Password_Strength[playerid], "Weak");
                    PlayerTextDrawColor(playerid, Password_Strength[playerid], COLOR_RED);
                    PlayerTextDrawShow(playerid, Password_Strength[playerid]);
                }

                if(!strcmp(inputtext, Temp_Confirm_Password_Value[playerid])){
                    PlayerTextDrawHide(playerid, Password_Match[playerid]);
                    PlayerTextDrawSetString(playerid, Password_Match[playerid], "Match");
                    PlayerTextDrawColor(playerid, Password_Match[playerid], COLOR_LIMEGREEN);
                    PlayerTextDrawShow(playerid, Password_Match[playerid]);
                }
                else{
                    PlayerTextDrawHide(playerid, Password_Match[playerid]);
                    PlayerTextDrawSetString(playerid, Password_Match[playerid], "Not_Match");
                    PlayerTextDrawColor(playerid, Password_Match[playerid], COLOR_RED);
                    PlayerTextDrawShow(playerid, Password_Match[playerid]);
                }

                PlayerTextDrawSetString(playerid, Password_Box[playerid], HidePassword(strlen(inputtext)));
                format(Temp_Register_Password_Value[playerid], MAX_STRING, inputtext);
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerEnterPassword, DIALOG_STYLE_PASSWORD, "Registration", "Enter your desired password", "Continue", "Back");
    }
    else if(playertextid == Confirm_Password_Box[playerid]){
        inline OnPlayerEnterConfirmPassword(response, listitem, string:inputtext[]){
            #pragma unused listitem
            if(response){
                if(!strlen(inputtext)){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Account Registration Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your password confirmation.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Input for password confirmation is empty.", inputtext);
                    return 1;
                }
                if(!strcmp(Temp_Register_Password_Value[playerid], inputtext)){
                    PlayerTextDrawHide(playerid, Password_Match[playerid]);
                    PlayerTextDrawSetString(playerid, Password_Match[playerid], "Match");
                    PlayerTextDrawColor(playerid, Password_Match[playerid], COLOR_LIMEGREEN);
                    PlayerTextDrawShow(playerid, Password_Match[playerid]);
                }
                else{
                    PlayerTextDrawHide(playerid, Password_Match[playerid]);
                    PlayerTextDrawSetString(playerid, Password_Match[playerid], "Not_Match");
                    PlayerTextDrawColor(playerid, Password_Match[playerid], COLOR_RED);
                    PlayerTextDrawShow(playerid, Password_Match[playerid]);
                }
                PlayerTextDrawSetString(playerid, Confirm_Password_Box[playerid], HidePassword(strlen(inputtext)));
                format(Temp_Confirm_Password_Value[playerid], MAX_STRING, inputtext);
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerEnterConfirmPassword, DIALOG_STYLE_PASSWORD, "Registration", "Confirm your password", "Continue", "Back");
    }
    else if(playertextid == Email_Box[playerid]){
        inline OnPlayerEnterEmail(response, listitem, string:inputtext[]){
            #pragma unused listitem
            if(response){
                for(new i; i < strlen(inputtext); i++){
                    if(inputtext[i] == '@'){
                        if(i == 0){
                            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Account Registration Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your account email.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Emails don't start with @.", inputtext);
                            return 1;
                        }
                        if(i == strlen(inputtext)-1){
                            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Account Registration Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your account email.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Emails don't end with @.", inputtext);
                            return 1;
                        }
                    }
                }
                format(Temp_Email_Value[playerid], MAX_STRING, inputtext);
                strreplace(Temp_Email_Value[playerid], "@", "(a)");
                PlayerTextDrawSetString(playerid, Email_Box[playerid], Temp_Email_Value[playerid]);
                strreplace(Temp_Email_Value[playerid], "(a)", "@");
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerEnterEmail, DIALOG_STYLE_PASSWORD, "Registration", "Enter your recovery email", "Continue", "Back");
    }
    else if(playertextid == Code_Box[playerid]){
        inline OnPlayerEnterCaptcha(response, listitem, string:inputtext[]){
            #pragma unused listitem
            if(response){
                if(strlen(inputtext) != 10){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Account Registration Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for the captcha code.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Code does not meet the required length of characters.", inputtext);
                    return 1;
                }
                PlayerTextDrawSetString(playerid, Code_Box[playerid], inputtext);
                format(Temp_Captcha_Value[playerid][1], MAX_STRING, inputtext);
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerEnterCaptcha, DIALOG_STYLE_PASSWORD, "Registration", "Enter captcha code", "Continue", "Back");
    }
    else if(playertextid == Back_Button_TD[playerid]){
        AccountRegistrationTD(playerid, false);
        CharacterCustomizationTD(playerid);
    }
    else if(playertextid == Register_Button_TD[playerid]){
        if(strcmp(Temp_Register_Password_Value[playerid], Temp_Confirm_Password_Value[playerid])){
            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Account Registration Error!", "Back", "", ""COL_RED"[ERROR]: "COL_WHITE"There is an error with your password.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Your password and password confirmations aren't matched.");
            return 1;
        }
        if(strcmp(Temp_Captcha_Value[playerid][0], Temp_Captcha_Value[playerid][1])){
            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Account Registration Error!", "Back", "", ""COL_RED"[ERROR]: "COL_WHITE"There is an error with the captcha code.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"The code you entered is incorrect.");
            return 1;
        }
        Cutscene_Plane[playerid] = CreateDynamicObject(1683, 1478.992187, 1718.191162, 15.747529, 0.000000, 0.000000, -91.699966, -1, -1, playerid, 500.00, 500.00);

        SetPlayerSkin(playerid, Temp_Skin_Value[playerid]);

        SpawnPlayer(playerid);
        SetPlayerPos(playerid, Character_Position[playerid][0], Character_Position[playerid][1], Character_Position[playerid][2]);
        SetPlayerFacingAngle(playerid, 270.0);
        SetPlayerInterior(playerid, 0);
        SetPlayerCameraPos(playerid, 1558.3354,1575.6953,46.1969);
        SetPlayerCameraLookAt(playerid, 1457.2263, 1634.0837, 34.1754, CAMERA_CUT);

        MoveDynamicObject(Cutscene_Plane[playerid], 1481.101928, 1494.890747, 15.747529, 10, 0.000000, 0.000000, -88.999954);

        bcrypt_hash(Temp_Register_Password_Value[playerid], 12, "OnPasswordHashed", "i", playerid);
        format(Temp_Register_Password_Value[playerid], MAX_STRING, "");
        format(Temp_Confirm_Password_Value[playerid], MAX_STRING, "");

        format(Character_Name[playerid], MAX_PLAYER_NAME+1, "%s", GetPlayerNameEx(playerid));
        Character_Age[playerid] = strval(Temp_Age_Value[playerid]);
        format(Character_Sex[playerid], MAX_SEX_NAME, "%s", Temp_Sex_Value[playerid]);
        format(Character_Nationality[playerid], MAX_NATIONALITY_NAME, "%s", Temp_Nationality_Value[playerid]);
        format(Character_Personality[playerid], MAX_PERSONALITY_NAME, "%s", Temp_Personality_Value[playerid]);
        format(Character_Religion[playerid], MAX_RELIGION_NAME, "%s", Temp_Religion_Value[playerid]);

        SetPVarInt(playerid, "IsPlayerLoggingIn", 0);
        CharacterCustomizationTD(playerid, false);
        AccountRegistrationTD(playerid, false);
        ServerTitleTD(playerid, false);

        WelcomeScreenTD(playerid);

        SetTimerEx("HideWelcomeScreen", 20000, false, "i", playerid);
    }
    return 1;
}

forward OnPasswordHashed(playerid);
public OnPasswordHashed(playerid){
    static Hashed_Password[MAX_STRING];
    bcrypt_get_hash(Hashed_Password);
    mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "INSERT INTO users(u_name, u_ip, u_password, u_email) VALUES('%e', '%e', '%e', '%e')", GetPlayerNameEx(playerid), GetPlayerIPAddress(playerid), Hashed_Password, Temp_Email_Value[playerid]);
    mysql_tquery(SQL_Handle, SQL_Buffer, "OnPlayerRegister", "i", playerid);
    mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "INSERT INTO char_info(char_pos_x, char_pos_y, char_pos_z, char_pos_a) VALUES(%f, %f, %f, %f)", Character_Position[playerid][0], Character_Position[playerid][1], Character_Position[playerid][2], Character_Position[playerid][3]);
    mysql_tquery(SQL_Handle, SQL_Buffer);
    return 1;
}

forward OnPlayerRegister(playerid);
public OnPlayerRegister(playerid){
    User_ID[playerid] = cache_insert_id();
}

forward HideWelcomeScreen(playerid);
public HideWelcomeScreen(playerid){
    StopAudioStreamForPlayer(playerid);

    SetCameraBehindPlayer(playerid);
    TogglePlayerControllable(playerid, true);
    WelcomeScreenTD(playerid, false);

    SetPlayerInterior(playerid, 0);
    SetPlayerVirtualWorld(playerid, 0);

    DestroyDynamicObject(Cutscene_Plane[playerid]);

    SetPVarInt(playerid, "IsPlayerLoggedIn", 1);
    return 1;
}

HidePassword(length, const character[] = "-"){
    static string[MAX_STRING], new_pass[MAX_STRING];
    format(new_pass, MAX_STRING, "");
    for(new i; i < length; i++){
        format(string, 4, " %s", character);
        strcat(new_pass, string);
    }
    return new_pass;
}