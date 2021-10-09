#include <YSI_Coding\y_hooks>

new
    PlayerText:Title_Background_Box_TD[MAX_PLAYERS],
    PlayerText:Title_TD[MAX_PLAYERS][2],
    PlayerText:Title_Box_Line_TD[MAX_PLAYERS];

new
    PlayerText:Registration_Box_TD[MAX_PLAYERS][2],
    PlayerText:Registration_Title_TD[MAX_PLAYERS][2],
    PlayerText:Character_Info_TD[MAX_PLAYERS],
    PlayerText:Character_Preview_TD[MAX_PLAYERS],
    PlayerText:Character_Info_Box_TD[MAX_PLAYERS],
    PlayerText:Character_Preview_Box_TD[MAX_PLAYERS],
    PlayerText:Name_TD[MAX_PLAYERS],
    PlayerText:Age_TD[MAX_PLAYERS],
    PlayerText:Sex_TD[MAX_PLAYERS],
    PlayerText:Nationality_TD[MAX_PLAYERS],
    PlayerText:Personality_TD[MAX_PLAYERS],
    PlayerText:Religion_TD[MAX_PLAYERS],
    PlayerText:Separator_TD[MAX_PLAYERS],
    PlayerText:Name_Value_TD[MAX_PLAYERS],
    PlayerText:Age_Value_TD[MAX_PLAYERS],
    PlayerText:Sex_Value_TD[MAX_PLAYERS],
    PlayerText:Nationality_Value_TD[MAX_PLAYERS],
    PlayerText:Personality_Value_TD[MAX_PLAYERS],
    PlayerText:Religion_Value_TD[MAX_PLAYERS],
    PlayerText:Continue_Box_TD[MAX_PLAYERS],
    PlayerText:Continue_Button_TD[MAX_PLAYERS],
    PlayerText:Character_Model_TD[MAX_PLAYERS],
    PlayerText:Character_Button_TD[MAX_PLAYERS][2];

new
    PlayerText:Subtitle[MAX_PLAYERS],
    PlayerText:Character_Preview_TD2[MAX_PLAYERS];

new
    Temp_Name_Value[MAX_PLAYERS][MAX_STRING],
    Temp_Age_Value[MAX_PLAYERS][MAX_STRING],
    Temp_Sex_Value[MAX_PLAYERS][MAX_STRING],
    Temp_Nationality_Value[MAX_PLAYERS][MAX_STRING],
    Temp_Personality_Value[MAX_PLAYERS][MAX_STRING],
    Temp_Religion_Value[MAX_PLAYERS][MAX_STRING],
    Temp_Skin_Value[MAX_PLAYERS];

new Character_Model[MAX_PLAYERS] = {1, ...};

ServerTitleTD(playerid, toggle=true){
    if(toggle){
        PlayerTextDrawShow(playerid, Title_Background_Box_TD[playerid]);
        PlayerTextDrawShow(playerid, Title_TD[playerid][0]);
        PlayerTextDrawShow(playerid, Title_TD[playerid][1]);
        PlayerTextDrawShow(playerid, Title_Box_Line_TD[playerid]);
    }
    else{
        PlayerTextDrawHide(playerid, Title_Background_Box_TD[playerid]);
        PlayerTextDrawHide(playerid, Title_TD[playerid][0]);
        PlayerTextDrawHide(playerid, Title_TD[playerid][1]);
        PlayerTextDrawHide(playerid, Title_Box_Line_TD[playerid]);
    }
}

CharacterCustomizationTD(playerid, toggle=true){
    if(toggle){
        PlayerTextDrawShow(playerid, Registration_Box_TD[playerid][0]);
        PlayerTextDrawShow(playerid, Registration_Box_TD[playerid][1]);
        PlayerTextDrawShow(playerid, Registration_Title_TD[playerid][0]);
        PlayerTextDrawShow(playerid, Registration_Title_TD[playerid][1]);
        PlayerTextDrawShow(playerid, Character_Info_TD[playerid]);
        PlayerTextDrawShow(playerid, Character_Preview_TD[playerid]);
        PlayerTextDrawShow(playerid, Character_Info_Box_TD[playerid]);
        PlayerTextDrawShow(playerid, Character_Preview_Box_TD[playerid]);
        PlayerTextDrawShow(playerid, Name_TD[playerid]);
        PlayerTextDrawShow(playerid, Age_TD[playerid]);
        PlayerTextDrawShow(playerid, Sex_TD[playerid]);
        PlayerTextDrawShow(playerid, Nationality_TD[playerid]);
        PlayerTextDrawShow(playerid, Personality_TD[playerid]);
        PlayerTextDrawShow(playerid, Religion_TD[playerid]);
        PlayerTextDrawShow(playerid, Separator_TD[playerid]);
        PlayerTextDrawShow(playerid, Name_Value_TD[playerid]);
        PlayerTextDrawShow(playerid, Age_Value_TD[playerid]);
        PlayerTextDrawShow(playerid, Sex_Value_TD[playerid]);
        PlayerTextDrawShow(playerid, Nationality_Value_TD[playerid]);
        PlayerTextDrawShow(playerid, Personality_Value_TD[playerid]);
        PlayerTextDrawShow(playerid, Religion_Value_TD[playerid]);
        PlayerTextDrawShow(playerid, Continue_Box_TD[playerid]);
        PlayerTextDrawShow(playerid, Continue_Button_TD[playerid]);
        PlayerTextDrawShow(playerid, Character_Model_TD[playerid]);
        PlayerTextDrawShow(playerid, Character_Button_TD[playerid][0]);
        PlayerTextDrawShow(playerid, Character_Button_TD[playerid][1]);

        SelectTextDraw(playerid, COLOR_ORANGE);
    }
    else{
        PlayerTextDrawHide(playerid, Registration_Box_TD[playerid][0]);
        PlayerTextDrawHide(playerid, Registration_Box_TD[playerid][1]);
        PlayerTextDrawHide(playerid, Registration_Title_TD[playerid][0]);
        PlayerTextDrawHide(playerid, Registration_Title_TD[playerid][1]);
        PlayerTextDrawHide(playerid, Character_Info_TD[playerid]);
        PlayerTextDrawHide(playerid, Character_Preview_TD[playerid]);
        PlayerTextDrawHide(playerid, Character_Info_Box_TD[playerid]);
        PlayerTextDrawHide(playerid, Character_Preview_Box_TD[playerid]);
        PlayerTextDrawHide(playerid, Name_TD[playerid]);
        PlayerTextDrawHide(playerid, Age_TD[playerid]);
        PlayerTextDrawHide(playerid, Sex_TD[playerid]);
        PlayerTextDrawHide(playerid, Nationality_TD[playerid]);
        PlayerTextDrawHide(playerid, Personality_TD[playerid]);
        PlayerTextDrawHide(playerid, Religion_TD[playerid]);
        PlayerTextDrawHide(playerid, Separator_TD[playerid]);
        PlayerTextDrawHide(playerid, Name_Value_TD[playerid]);
        PlayerTextDrawHide(playerid, Age_Value_TD[playerid]);
        PlayerTextDrawHide(playerid, Sex_Value_TD[playerid]);
        PlayerTextDrawHide(playerid, Nationality_Value_TD[playerid]);
        PlayerTextDrawHide(playerid, Personality_Value_TD[playerid]);
        PlayerTextDrawHide(playerid, Religion_Value_TD[playerid]);
        PlayerTextDrawHide(playerid, Continue_Box_TD[playerid]);
        PlayerTextDrawHide(playerid, Continue_Button_TD[playerid]);
        PlayerTextDrawHide(playerid, Character_Model_TD[playerid]);
        PlayerTextDrawHide(playerid, Character_Button_TD[playerid][0]);
        PlayerTextDrawHide(playerid, Character_Button_TD[playerid][1]);

        CancelSelectTextDraw(playerid);
    }
}

hook OnGameModeInit(){
    Log(LOG_MODULE, "[authentication/] Account creation loaded...");
    return 1;
}

hook OnPlayerConnect(playerid){
    Title_Background_Box_TD[playerid] = CreatePlayerTextDraw(playerid, 320.000000, -1.000000, "_");
    PlayerTextDrawFont(playerid, Title_Background_Box_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Title_Background_Box_TD[playerid], 0.587499, 10.649991);
    PlayerTextDrawTextSize(playerid, Title_Background_Box_TD[playerid], 352.500000, 648.000000);
    PlayerTextDrawSetOutline(playerid, Title_Background_Box_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Title_Background_Box_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Title_Background_Box_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Title_Background_Box_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Title_Background_Box_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Title_Background_Box_TD[playerid], 225);
    PlayerTextDrawUseBox(playerid, Title_Background_Box_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Title_Background_Box_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Title_Background_Box_TD[playerid], 0);

    Title_TD[playerid][0] = CreatePlayerTextDraw(playerid, 199.000000, 22.000000, "Stardust");
    PlayerTextDrawFont(playerid, Title_TD[playerid][0], 3);
    PlayerTextDrawLetterSize(playerid, Title_TD[playerid][0], 1.500005, 5.200002);
    PlayerTextDrawTextSize(playerid, Title_TD[playerid][0], 401.000000, 217.000000);
    PlayerTextDrawSetOutline(playerid, Title_TD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Title_TD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Title_TD[playerid][0], 2);
    PlayerTextDrawColor(playerid, Title_TD[playerid][0], -764862721);
    PlayerTextDrawBackgroundColor(playerid, Title_TD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Title_TD[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, Title_TD[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, Title_TD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Title_TD[playerid][0], 0);

    Title_TD[playerid][1] = CreatePlayerTextDraw(playerid, 444.000000, 22.000000, "Roleplay");
    PlayerTextDrawFont(playerid, Title_TD[playerid][1], 3);
    PlayerTextDrawLetterSize(playerid, Title_TD[playerid][1], 1.500005, 5.200002);
    PlayerTextDrawTextSize(playerid, Title_TD[playerid][1], 401.000000, 217.000000);
    PlayerTextDrawSetOutline(playerid, Title_TD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Title_TD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Title_TD[playerid][1], 2);
    PlayerTextDrawColor(playerid, Title_TD[playerid][1], -2686721);
    PlayerTextDrawBackgroundColor(playerid, Title_TD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Title_TD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, Title_TD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Title_TD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Title_TD[playerid][1], 0);

    Title_Box_Line_TD[playerid] = CreatePlayerTextDraw(playerid, 320.000000, 79.000000, "_");
    PlayerTextDrawFont(playerid, Title_Box_Line_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Title_Box_Line_TD[playerid], 0.600000, 1.799998);
    PlayerTextDrawTextSize(playerid, Title_Box_Line_TD[playerid], 303.000000, 644.000000);
    PlayerTextDrawSetOutline(playerid, Title_Box_Line_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Title_Box_Line_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Title_Box_Line_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Title_Box_Line_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Title_Box_Line_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Title_Box_Line_TD[playerid], 1433087999);
    PlayerTextDrawUseBox(playerid, Title_Box_Line_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Title_Box_Line_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Title_Box_Line_TD[playerid], 0);

    Registration_Box_TD[playerid][0] = CreatePlayerTextDraw(playerid, 149.000000, 114.000000, "_");
    PlayerTextDrawFont(playerid, Registration_Box_TD[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, Registration_Box_TD[playerid][0], 0.600000, 35.750003);
    PlayerTextDrawTextSize(playerid, Registration_Box_TD[playerid][0], 306.500000, 283.000000);
    PlayerTextDrawSetOutline(playerid, Registration_Box_TD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Registration_Box_TD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Registration_Box_TD[playerid][0], 2);
    PlayerTextDrawColor(playerid, Registration_Box_TD[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, Registration_Box_TD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Registration_Box_TD[playerid][0], 1296911841);
    PlayerTextDrawUseBox(playerid, Registration_Box_TD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Registration_Box_TD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Registration_Box_TD[playerid][0], 0);

    Registration_Box_TD[playerid][1] = CreatePlayerTextDraw(playerid, 469.000000, 114.000000, "_");
    PlayerTextDrawFont(playerid, Registration_Box_TD[playerid][1], 1);
    PlayerTextDrawLetterSize(playerid, Registration_Box_TD[playerid][1], 0.600000, 35.750003);
    PlayerTextDrawTextSize(playerid, Registration_Box_TD[playerid][1], 306.500000, 323.000000);
    PlayerTextDrawSetOutline(playerid, Registration_Box_TD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Registration_Box_TD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Registration_Box_TD[playerid][1], 2);
    PlayerTextDrawColor(playerid, Registration_Box_TD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, Registration_Box_TD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Registration_Box_TD[playerid][1], 1296911841);
    PlayerTextDrawUseBox(playerid, Registration_Box_TD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Registration_Box_TD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Registration_Box_TD[playerid][1], 0);

    Registration_Title_TD[playerid][0] = CreatePlayerTextDraw(playerid, 149.000000, 121.000000, "_");
    PlayerTextDrawFont(playerid, Registration_Title_TD[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, Registration_Title_TD[playerid][0], 0.600000, 5.150000);
    PlayerTextDrawTextSize(playerid, Registration_Title_TD[playerid][0], 298.500000, 272.000000);
    PlayerTextDrawSetOutline(playerid, Registration_Title_TD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Registration_Title_TD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Registration_Title_TD[playerid][0], 2);
    PlayerTextDrawColor(playerid, Registration_Title_TD[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, Registration_Title_TD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Registration_Title_TD[playerid][0], 135);
    PlayerTextDrawUseBox(playerid, Registration_Title_TD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Registration_Title_TD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Registration_Title_TD[playerid][0], 0);

    Registration_Title_TD[playerid][1] = CreatePlayerTextDraw(playerid, 469.000000, 121.000000, "_");
    PlayerTextDrawFont(playerid, Registration_Title_TD[playerid][1], 1);
    PlayerTextDrawLetterSize(playerid, Registration_Title_TD[playerid][1], 0.600000, 5.150000);
    PlayerTextDrawTextSize(playerid, Registration_Title_TD[playerid][1], 298.500000, 313.500000);
    PlayerTextDrawSetOutline(playerid, Registration_Title_TD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Registration_Title_TD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Registration_Title_TD[playerid][1], 2);
    PlayerTextDrawColor(playerid, Registration_Title_TD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, Registration_Title_TD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Registration_Title_TD[playerid][1], 135);
    PlayerTextDrawUseBox(playerid, Registration_Title_TD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Registration_Title_TD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Registration_Title_TD[playerid][1], 0);

    Character_Info_TD[playerid] = CreatePlayerTextDraw(playerid, 149.000000, 125.000000, "Character Information");
    PlayerTextDrawFont(playerid, Character_Info_TD[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Character_Info_TD[playerid], 0.666665, 2.049998);
    PlayerTextDrawTextSize(playerid, Character_Info_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Character_Info_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Character_Info_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Character_Info_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Character_Info_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Character_Info_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Character_Info_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Character_Info_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Character_Info_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Character_Info_TD[playerid], 0);

    Character_Preview_TD[playerid] = CreatePlayerTextDraw(playerid, 469.000000, 125.000000, "Character Preview");
    PlayerTextDrawFont(playerid, Character_Preview_TD[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Character_Preview_TD[playerid], 0.666665, 2.049998);
    PlayerTextDrawTextSize(playerid, Character_Preview_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Character_Preview_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Character_Preview_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Character_Preview_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Character_Preview_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Character_Preview_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Character_Preview_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Character_Preview_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Character_Preview_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Character_Preview_TD[playerid], 0);

    Character_Info_Box_TD[playerid] = CreatePlayerTextDraw(playerid, 149.000000, 178.000000, "_");
    PlayerTextDrawFont(playerid, Character_Info_Box_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Character_Info_Box_TD[playerid], 0.600000, 28.000005);
    PlayerTextDrawTextSize(playerid, Character_Info_Box_TD[playerid], 298.500000, 272.000000);
    PlayerTextDrawSetOutline(playerid, Character_Info_Box_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Character_Info_Box_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Character_Info_Box_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Character_Info_Box_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Character_Info_Box_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Character_Info_Box_TD[playerid], 135);
    PlayerTextDrawUseBox(playerid, Character_Info_Box_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Character_Info_Box_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Character_Info_Box_TD[playerid], 0);

    Character_Preview_Box_TD[playerid] = CreatePlayerTextDraw(playerid, 469.000000, 178.000000, "_");
    PlayerTextDrawFont(playerid, Character_Preview_Box_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Character_Preview_Box_TD[playerid], 0.600000, 28.000005);
    PlayerTextDrawTextSize(playerid, Character_Preview_Box_TD[playerid], 375.000000, 313.000000);
    PlayerTextDrawSetOutline(playerid, Character_Preview_Box_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Character_Preview_Box_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Character_Preview_Box_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Character_Preview_Box_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Character_Preview_Box_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Character_Preview_Box_TD[playerid], 135);
    PlayerTextDrawUseBox(playerid, Character_Preview_Box_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Character_Preview_Box_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Character_Preview_Box_TD[playerid], 0);

    Name_TD[playerid] = CreatePlayerTextDraw(playerid, 21.000000, 189.000000, "Name:");
    PlayerTextDrawFont(playerid, Name_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Name_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Name_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Name_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Name_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Name_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Name_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Name_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Name_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Name_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Name_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Name_TD[playerid], 0);

    Age_TD[playerid] = CreatePlayerTextDraw(playerid, 21.000000, 212.000000, "Age:");
    PlayerTextDrawFont(playerid, Age_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Age_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Age_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Age_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Age_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Age_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Age_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Age_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Age_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Age_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Age_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Age_TD[playerid], 0);

    Sex_TD[playerid] = CreatePlayerTextDraw(playerid, 21.000000, 235.000000, "Sex:");
    PlayerTextDrawFont(playerid, Sex_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Sex_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Sex_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Sex_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Sex_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Sex_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Sex_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Sex_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Sex_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Sex_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Sex_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Sex_TD[playerid], 0);

    Nationality_TD[playerid] = CreatePlayerTextDraw(playerid, 21.000000, 257.000000, "Nationality:");
    PlayerTextDrawFont(playerid, Nationality_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Nationality_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Nationality_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Nationality_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Nationality_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Nationality_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Nationality_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Nationality_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Nationality_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Nationality_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Nationality_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Nationality_TD[playerid], 0);

    Personality_TD[playerid] = CreatePlayerTextDraw(playerid, 21.000000, 280.000000, "Personality:");
    PlayerTextDrawFont(playerid, Personality_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Personality_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Personality_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Personality_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Personality_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Personality_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Personality_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Personality_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Personality_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Personality_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Personality_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Personality_TD[playerid], 0);

    Religion_TD[playerid] = CreatePlayerTextDraw(playerid, 21.000000, 303.000000, "Religion:");
    PlayerTextDrawFont(playerid, Religion_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Religion_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Religion_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Religion_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Religion_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Religion_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Religion_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Religion_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Religion_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Religion_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Religion_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Religion_TD[playerid], 0);

    Separator_TD[playerid] = CreatePlayerTextDraw(playerid, 149.000000, 183.000000, "_");
    PlayerTextDrawFont(playerid, Separator_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Separator_TD[playerid], 0.600000, 16.950000);
    PlayerTextDrawTextSize(playerid, Separator_TD[playerid], 294.500000, -4.500000);
    PlayerTextDrawSetOutline(playerid, Separator_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Separator_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Separator_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Separator_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Separator_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Separator_TD[playerid], 135);
    PlayerTextDrawUseBox(playerid, Separator_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Separator_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Separator_TD[playerid], 0);

    Name_Value_TD[playerid] = CreatePlayerTextDraw(playerid, 162.000000, 189.000000, GetPlayerNameEx(playerid));
    PlayerTextDrawFont(playerid, Name_Value_TD[playerid], 0);
    PlayerTextDrawLetterSize(playerid, Name_Value_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Name_Value_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Name_Value_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Name_Value_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Name_Value_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Name_Value_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Name_Value_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Name_Value_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Name_Value_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Name_Value_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Name_Value_TD[playerid], 1);

    Age_Value_TD[playerid] = CreatePlayerTextDraw(playerid, 162.000000, 212.000000, "Age");
    PlayerTextDrawFont(playerid, Age_Value_TD[playerid], 0);
    PlayerTextDrawLetterSize(playerid, Age_Value_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Age_Value_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Age_Value_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Age_Value_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Age_Value_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Age_Value_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Age_Value_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Age_Value_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Age_Value_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Age_Value_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Age_Value_TD[playerid], 1);

    Sex_Value_TD[playerid] = CreatePlayerTextDraw(playerid, 162.000000, 235.000000, "Sex");
    PlayerTextDrawFont(playerid, Sex_Value_TD[playerid], 0);
    PlayerTextDrawLetterSize(playerid, Sex_Value_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Sex_Value_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Sex_Value_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Sex_Value_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Sex_Value_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Sex_Value_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Sex_Value_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Sex_Value_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Sex_Value_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Sex_Value_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Sex_Value_TD[playerid], 1);

    Nationality_Value_TD[playerid] = CreatePlayerTextDraw(playerid, 162.000000, 257.000000, "Nationality");
    PlayerTextDrawFont(playerid, Nationality_Value_TD[playerid], 0);
    PlayerTextDrawLetterSize(playerid, Nationality_Value_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Nationality_Value_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Nationality_Value_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Nationality_Value_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Nationality_Value_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Nationality_Value_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Nationality_Value_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Nationality_Value_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Nationality_Value_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Nationality_Value_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Nationality_Value_TD[playerid], 1);

    Personality_Value_TD[playerid] = CreatePlayerTextDraw(playerid, 162.000000, 280.000000, "Personality");
    PlayerTextDrawFont(playerid, Personality_Value_TD[playerid], 0);
    PlayerTextDrawLetterSize(playerid, Personality_Value_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Personality_Value_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Personality_Value_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Personality_Value_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Personality_Value_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Personality_Value_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Personality_Value_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Personality_Value_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Personality_Value_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Personality_Value_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Personality_Value_TD[playerid], 1);

    Religion_Value_TD[playerid] = CreatePlayerTextDraw(playerid, 162.000000, 303.000000, "None");
    PlayerTextDrawFont(playerid, Religion_Value_TD[playerid], 0);
    PlayerTextDrawLetterSize(playerid, Religion_Value_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Religion_Value_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Religion_Value_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Religion_Value_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Religion_Value_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Religion_Value_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Religion_Value_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Religion_Value_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Religion_Value_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Religion_Value_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Religion_Value_TD[playerid], 1);

    Continue_Box_TD[playerid] = CreatePlayerTextDraw(playerid, 149.000000, 343.000000, "_");
    PlayerTextDrawFont(playerid, Continue_Box_TD[playerid], 1); 
    PlayerTextDrawLetterSize(playerid, Continue_Box_TD[playerid], 0.600000, 7.599997);
    PlayerTextDrawTextSize(playerid, Continue_Box_TD[playerid], 298.500000, 255.500000);
    PlayerTextDrawSetOutline(playerid, Continue_Box_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Continue_Box_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Continue_Box_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Continue_Box_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Continue_Box_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Continue_Box_TD[playerid], 1097458055);
    PlayerTextDrawUseBox(playerid, Continue_Box_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Continue_Box_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Continue_Box_TD[playerid], 0);

    Continue_Button_TD[playerid] = CreatePlayerTextDraw(playerid, 149.000000, 359.000000, "Continue");
    PlayerTextDrawFont(playerid, Continue_Button_TD[playerid], 3);
    PlayerTextDrawLetterSize(playerid, Continue_Button_TD[playerid], 1.237501, 4.049993);
    PlayerTextDrawTextSize(playerid, Continue_Button_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Continue_Button_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Continue_Button_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Continue_Button_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Continue_Button_TD[playerid], 16777215);
    PlayerTextDrawBackgroundColor(playerid, Continue_Button_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Continue_Button_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Continue_Button_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Continue_Button_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Continue_Button_TD[playerid], 1);

    Character_Model_TD[playerid] = CreatePlayerTextDraw(playerid, 370.000000, 171.000000, "Model");
    PlayerTextDrawFont(playerid, Character_Model_TD[playerid], 5);
    PlayerTextDrawLetterSize(playerid, Character_Model_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Character_Model_TD[playerid], 200.000000, 269.500000);
    PlayerTextDrawSetOutline(playerid, Character_Model_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Character_Model_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Character_Model_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Character_Model_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Character_Model_TD[playerid], 0);
    PlayerTextDrawBoxColor(playerid, Character_Model_TD[playerid], 0);
    PlayerTextDrawUseBox(playerid, Character_Model_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Character_Model_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Character_Model_TD[playerid], 0);
    PlayerTextDrawSetPreviewModel(playerid, Character_Model_TD[playerid], 1);
    PlayerTextDrawSetPreviewRot(playerid, Character_Model_TD[playerid], -10.000000, 0.000000, -20.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, Character_Model_TD[playerid], 1, 1);

    Character_Button_TD[playerid][0] = CreatePlayerTextDraw(playerid, 409.000000, 276.000000, "<<");
    PlayerTextDrawFont(playerid, Character_Button_TD[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, Character_Button_TD[playerid][0], 0.862496, 5.250000);
    PlayerTextDrawTextSize(playerid, Character_Button_TD[playerid][0], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Character_Button_TD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Character_Button_TD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Character_Button_TD[playerid][0], 2);
    PlayerTextDrawColor(playerid, Character_Button_TD[playerid][0], 1097458175);
    PlayerTextDrawBackgroundColor(playerid, Character_Button_TD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Character_Button_TD[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, Character_Button_TD[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, Character_Button_TD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Character_Button_TD[playerid][0], 1);

    Character_Button_TD[playerid][1] = CreatePlayerTextDraw(playerid, 540.000000, 276.000000, ">>");
    PlayerTextDrawFont(playerid, Character_Button_TD[playerid][1], 1);
    PlayerTextDrawLetterSize(playerid, Character_Button_TD[playerid][1], 0.862496, 5.250000);
    PlayerTextDrawTextSize(playerid, Character_Button_TD[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Character_Button_TD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Character_Button_TD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Character_Button_TD[playerid][1], 2);
    PlayerTextDrawColor(playerid, Character_Button_TD[playerid][1], 1097458175);
    PlayerTextDrawBackgroundColor(playerid, Character_Button_TD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Character_Button_TD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, Character_Button_TD[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, Character_Button_TD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Character_Button_TD[playerid][1], 1);
    return 1;
}

#include <YSI_Coding\y_hooks>

hook OnPlayerRequestClass(playerid, classid){
    SetSpawnInfo(playerid, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    
    TogglePlayerSpectating(playerid, true);
    return 1;
}

hook OnPlayerConnect(playerid){
    format(Temp_Name_Value[playerid], MAX_STRING, GetPlayerNameEx(playerid));
    format(Temp_Age_Value[playerid], MAX_STRING, "Age");
    format(Temp_Sex_Value[playerid], MAX_STRING, "Sex");
    format(Temp_Nationality_Value[playerid], MAX_STRING, "Nationality");
    format(Temp_Personality_Value[playerid], MAX_STRING, "Personality");
    format(Temp_Religion_Value[playerid], MAX_STRING, "None");

    Temp_Skin_Value[playerid] = 1;
    Character_Model[playerid] = 1;
    return 1;
}

hook OnPlayerClickPlayerTD(playerid, PlayerText:playertextid){
    if(playertextid == Name_Value_TD[playerid]){
        inline OnPlayerChooseName(response, listitem, string:inputtext[]){
            #pragma unused listitem
            if(response){
                if(!strlen(inputtext)){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character name.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Character name is empty.", inputtext);
                    return 1;
                }
                if(strlen(inputtext) < 5 || strlen(inputtext) > 16){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character name.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Character name does not follow the character limit.", inputtext);
                    return 1;
                }
                if(HasNumeric(inputtext)){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character name.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Character name cannot contain numerical digits.", inputtext);
                    return 1;
                }
                for(new i; i < strlen(inputtext); i++){
                    if(inputtext[i] == '_'){
                        if(i == 0){
                            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character name.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Character name cannot start with an underscore '_'.", inputtext);
                            return 1;
                        }
                        if(i == strlen(inputtext)-1){
                            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character name.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Character name cannot end with an underscore '_'.", inputtext);
                            return 1;
                        }
                        if(inputtext[i+1] == '_'){
                            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character name.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Underscores cannot be successive.", inputtext);
                            return 1;
                        }
                    }
                }

                SetPlayerName(playerid, inputtext);
                PlayerTextDrawSetString(playerid, Name_Value_TD[playerid], inputtext);
                PlayerTextDrawSetString(playerid, Subtitle[playerid], inputtext);
                format(Temp_Name_Value[playerid], MAX_STRING, inputtext);
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerChooseName, DIALOG_STYLE_INPUT, "Character Creation", ""COL_LIMEGREEN"Enter your character's Name\n\n"COL_AQUA"[TIP]: "COL_WHITE"The character name can also be changed In-Characterly at the LVSA or \n"COL_WHITE"Las Venturas Statistics Authority find out the location ICly.\n\n"COL_PURPLE"[EXAMPLE]: "COL_WHITE"John_Smith", "Enter", "Back");
    }
    else if(playertextid == Age_Value_TD[playerid]){
        inline OnPlayerChooseAge(response, listitem, string:inputtext[]){
            #pragma unused listitem
            if(response){
                if(!strlen(inputtext)){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character age.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Character age is empty.", inputtext);
                    return 1;
                }
                if(!IsNumeric(inputtext)){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character age.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Character age is not numeric.", inputtext);
                    return 1;
                }
                if(!IsInBetween(strval(inputtext), 18, 99)){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character age.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Character age must be greater than 17 and less than 99.", inputtext);
                    return 1;
                }
                PlayerTextDrawSetString(playerid, Age_Value_TD[playerid], inputtext);
                format(Temp_Age_Value[playerid], MAX_STRING, inputtext);
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerChooseAge, DIALOG_STYLE_INPUT, "Character Creation", ""COL_LIMEGREEN"Enter your character's Age\n\n"COL_AQUA"[TIP]: "COL_WHITE"The age can also be changed In-Characterly at the LVSA or\nLas Venturas Statistics Authority if you want to change your birthdate.\nFInd out the location ICly.\n\n"COL_PURPLE"[EXAMPLE]: "COL_WHITE"23", "Enter", "Back");
    }
    else if(playertextid == Sex_Value_TD[playerid]){
        inline OnPlayerChooseSex(response, listitem, string:inputtext[]){
            #pragma unused inputtext, listitem
            if(response){
                Dialog_ShowCallback(playerid, using public OnPlayerSelectSex<iiiis>, DIALOG_STYLE_LIST, "Character Creation", "Male\nFemale", "Enter", "Back");
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerChooseSex, DIALOG_STYLE_MSGBOX, "Character Creation", ""COL_LIMEGREEN"Choose your character's Sex\n\n"COL_ORANGE"[WARNING]: "COL_WHITE"Choosing your character's sex cannot be changed later,\nyou can only choose for your character's sex now.", "Enter", "Back");
    }
    else if(playertextid == Nationality_Value_TD[playerid]){
        inline OnPlayerChooseNationality(response, listitem, string:inputtext[]){
            #pragma unused inputtext, listitem
            if(response){
                Dialog_ShowCallback(playerid, using public OnPlayerSelectNationality<iiiis>, DIALOG_STYLE_LIST, "Character Creation", nationality_list(), "Enter", "Back");
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerChooseNationality, DIALOG_STYLE_MSGBOX, "Character Creation", ""COL_LIMEGREEN"Choose your character's Nationality\n\n"COL_ORANGE"[TIP]: "COL_WHITE"The character's nationality can also be changed at the LVDFA or \nLas Venturas Department of Foreign Affairs find out the location ICly.", "Enter", "Back");
    }
    else if(playertextid == Personality_Value_TD[playerid]){
        inline OnPlayerChoosePersonality(response, listitem, string:inputtext[]){
            #pragma unused inputtext, listitem
            if(response){
                Dialog_ShowCallback(playerid, using public OnPlayerSelectPersonality<iiiis>, DIALOG_STYLE_LIST, "Character Creation", personalities, "Enter", "Back");
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerChoosePersonality, DIALOG_STYLE_MSGBOX, "Character Creation", ""COL_LIMEGREEN"Choose your character's Personality\n\n"COL_ORANGE"[TIP]: "COL_WHITE"The character's personality can also be later using /settings.", "Enter", "Back");
    }
    else if(playertextid == Religion_Value_TD[playerid]){
        inline OnPlayerChooseReligion(response, listitem, string:inputtext[]){
            #pragma unused listitem
            if(response){
                if(isnull(inputtext)){
                    Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid format for your character religion.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"Character religion is empty, setting it to \"None\".", inputtext);
                    return 1;
                }
                PlayerTextDrawSetString(playerid, Religion_Value_TD[playerid], inputtext);
                format(Temp_Religion_Value[playerid], MAX_STRING, inputtext);
            }
            else{
                PlayerTextDrawSetString(playerid, Religion_Value_TD[playerid], Temp_Religion_Value[playerid]);
            }
        }
        Dialog_ShowCallback(playerid, using inline OnPlayerChooseReligion, DIALOG_STYLE_INPUT, "Character Creation", ""COL_LIMEGREEN"Enter your character's Religion\n\n"COL_ORANGE"[TIP]: "COL_WHITE"You can leave this blank and your religion will be marked as (None).\nThe character religion can also be changed In-Characterly.\n"COL_WHITE"Find out how on your journey.\n\n"COL_PURPLE"[EXAMPLE]: "COL_WHITE"Catholic", "Enter", "Back");
    }
    else if(playertextid == Character_Button_TD[playerid][0]){
        Character_Model[playerid]--;
        if(Character_Model[playerid] == 0){
            Character_Model[playerid] = 20001;
        }
        if(Character_Model[playerid] == 20000){
            Character_Model[playerid] = 310;
        }
        if(Character_Model[playerid] == 74){
            Character_Model[playerid] = 73;
        }
        PlayerTextDrawHide(playerid, Character_Model_TD[playerid]);
        PlayerTextDrawSetPreviewModel(playerid, Character_Model_TD[playerid], Character_Model[playerid]);
        PlayerTextDrawShow(playerid, Character_Model_TD[playerid]);
    }
    else if(playertextid == Character_Button_TD[playerid][1]){
        Character_Model[playerid]++;
        if(Character_Model[playerid] == 74){
            Character_Model[playerid] = 75;
        }
        if(Character_Model[playerid] == 311){
            Character_Model[playerid] = 20001;
        }
        if(Character_Model[playerid] == 20002){
            Character_Model[playerid] = 1;
        }
        PlayerTextDrawHide(playerid, Character_Model_TD[playerid]);
        PlayerTextDrawSetPreviewModel(playerid, Character_Model_TD[playerid], Character_Model[playerid]);
        PlayerTextDrawShow(playerid, Character_Model_TD[playerid]);
    }
    else if(playertextid == Continue_Button_TD[playerid]){
        if(!strcmp(Temp_Age_Value[playerid], "Age")){
            Dialog_Show(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", ""COL_RED"[ERROR]: "COL_WHITE"There is an empty field.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"You haven't chosen your character's age yet.", "Back");
        }
        else if(!strcmp(Temp_Sex_Value[playerid], "Sex")){
            Dialog_Show(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", ""COL_RED"[ERROR]: "COL_WHITE"There is an empty field.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"You haven't chosen your character's sex yet.", "Back");
        }
        else if(!strcmp(Temp_Nationality_Value[playerid], "Nationality")){
            Dialog_Show(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", ""COL_RED"[ERROR]: "COL_WHITE"There is an empty field.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"You haven't chosen your character's nationality yet.", "Back");
        }
        else if(!strcmp(Temp_Personality_Value[playerid], "Personality")){
            Dialog_Show(playerid, DIALOG_STYLE_MSGBOX, "Character Creation Error!", ""COL_RED"[ERROR]: "COL_WHITE"There is an empty field.\n\n"COL_AQUA"[DETAILS]: "COL_WHITE"You haven't chosen your character's personality yet.", "Back");
        }
        else{
            Temp_Skin_Value[playerid] = Character_Model[playerid];
        
            PlayerTextDrawSetPreviewModel(playerid, Character_Preview_TD2[playerid], Temp_Skin_Value[playerid]);
            CharacterCustomizationTD(playerid, false);
            AccountRegistrationTD(playerid);
        }
    }
    return 1;
}

forward OnPlayerSelectSex(playerid, dialogid, response, listitem, string:inputtext[]);
public OnPlayerSelectSex(playerid, dialogid, response, listitem, string:inputtext[]){
    if(response){
        if(listitem == 0){
            PlayerTextDrawSetString(playerid, Sex_Value_TD[playerid], "Male");
            format(Temp_Sex_Value[playerid], MAX_STRING, "Male");
        }
        else if(listitem == 1){
            PlayerTextDrawSetString(playerid, Sex_Value_TD[playerid], "Female");
            format(Temp_Sex_Value[playerid], MAX_STRING, "Female");
        }
    }
}

forward OnPlayerSelectNationality(playerid, dialogid, response, listitem, string:inputtext[]);
public OnPlayerSelectNationality(playerid, dialogid, response, listitem, string:inputtext[]){
    if(response){
        for(new i; i < sizeof(nationalities); i++){
            if(listitem == i){
                PlayerTextDrawSetString(playerid, Nationality_Value_TD[playerid], nationalities[i]);
                format(Temp_Nationality_Value[playerid], MAX_STRING, nationalities[i]);
            }
        }
    }
}

forward OnPlayerSelectPersonality(playerid, dialogid, response, listitem, string:inputtext[]);
public OnPlayerSelectPersonality(playerid, dialogid, response, listitem, string:inputtext[]){
    if(response){
        if(listitem == 0){
            PlayerTextDrawSetString(playerid, Personality_Value_TD[playerid], "Charismatic");
            format(Temp_Personality_Value[playerid], MAX_STRING, "Charismatic");
        }
        else if(listitem == 1){
            PlayerTextDrawSetString(playerid, Personality_Value_TD[playerid], "Extrovert");
            format(Temp_Personality_Value[playerid], MAX_STRING, "Extrovert");
        }
        else if(listitem == 2){
            PlayerTextDrawSetString(playerid, Personality_Value_TD[playerid], "Introvert");
            format(Temp_Personality_Value[playerid], MAX_STRING, "Introvert");
        }
        else if(listitem == 3){
            PlayerTextDrawSetString(playerid, Personality_Value_TD[playerid], "Intelligent");
            format(Temp_Personality_Value[playerid], MAX_STRING, "Intelligent");
        }
        else if(listitem == 4){
            PlayerTextDrawSetString(playerid, Personality_Value_TD[playerid], "Skillful");
            format(Temp_Personality_Value[playerid], MAX_STRING, "Skillful");
        }
    }
}

hook OnPlayerClickTextDraw(playerid, Text:clickedid){
    if(!GetPVarInt(playerid, "IsPlayerLoggedIn")){
        if(clickedid == Text:INVALID_TEXT_DRAW){
            if(GetPVarInt(playerid, "IsPlayerLoggingIn") == 1){
                SelectTextDraw(playerid, COLOR_LIMEGREEN);
            }
            else if(GetPVarInt(playerid, "IsPlayerLoggingIn") == 2){
                SelectTextDraw(playerid, COLOR_ORANGE);
            }
            else{
                CancelSelectTextDraw(playerid);
            }
        }
    }
    return 1;
}