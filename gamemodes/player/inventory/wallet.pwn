#include <YSI_Coding\y_hooks>

new
    PlayerText:ID_Background[MAX_PLAYERS],
    PlayerText:ID_Title_Background[MAX_PLAYERS],
    PlayerText:ID_Title[MAX_PLAYERS],
    PlayerText:ID_Photo_Box[MAX_PLAYERS],
    PlayerText:ID_Photo[MAX_PLAYERS],
    PlayerText:ID_Photo_Info[MAX_PLAYERS],
    PlayerText:ID_Surname_Title[MAX_PLAYERS],
    PlayerText:ID_Surname[MAX_PLAYERS],
    PlayerText:ID_First_Name_Title[MAX_PLAYERS],
    PlayerText:ID_First_Name[MAX_PLAYERS],
    PlayerText:ID_Birthdate_Title[MAX_PLAYERS],
    PlayerText:ID_Birthdate[MAX_PLAYERS],
    PlayerText:ID_Blood_Type_Title[MAX_PLAYERS],
    PlayerText:ID_Blood_Type[MAX_PLAYERS],
    PlayerText:ID_LV_Number[MAX_PLAYERS],
    PlayerText:ID_Horizontal_Bar[3][MAX_PLAYERS],
    PlayerText:ID_Security_Icon[2][MAX_PLAYERS];

hook OnPlayerConnect(playerid){
    ID_Background[playerid] = CreatePlayerTextDraw(playerid, 319.000000, 121.000000, "_");
    PlayerTextDrawFont(playerid, ID_Background[playerid], 1);
    PlayerTextDrawLetterSize(playerid, ID_Background[playerid], 1.112498, 25.799999);
    PlayerTextDrawTextSize(playerid, ID_Background[playerid], 298.500000, 334.500000);
    PlayerTextDrawSetOutline(playerid, ID_Background[playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Background[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Background[playerid], 2);
    PlayerTextDrawColor(playerid, ID_Background[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Background[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Background[playerid], -16);
    PlayerTextDrawUseBox(playerid, ID_Background[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ID_Background[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Background[playerid], 0);

    ID_Title_Background[playerid] = CreatePlayerTextDraw(playerid, 318.000000, 128.000000, "_");
    PlayerTextDrawFont(playerid, ID_Title_Background[playerid], 1);
    PlayerTextDrawLetterSize(playerid, ID_Title_Background[playerid], 0.600000, 3.650000);
    PlayerTextDrawTextSize(playerid, ID_Title_Background[playerid], 298.500000, 323.000000);
    PlayerTextDrawSetOutline(playerid, ID_Title_Background[playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Title_Background[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Title_Background[playerid], 2);
    PlayerTextDrawColor(playerid, ID_Title_Background[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Title_Background[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Title_Background[playerid], -2686841);
    PlayerTextDrawUseBox(playerid, ID_Title_Background[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ID_Title_Background[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Title_Background[playerid], 0);

    ID_Title[playerid] = CreatePlayerTextDraw(playerid, 318.000000, 134.000000, "Las_Venturas_National_ID");
    PlayerTextDrawFont(playerid, ID_Title[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_Title[playerid], 0.483332, 2.000000);
    PlayerTextDrawTextSize(playerid, ID_Title[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_Title[playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Title[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Title[playerid], 2);
    PlayerTextDrawColor(playerid, ID_Title[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Title[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Title[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_Title[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_Title[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Title[playerid], 0);

    ID_Photo_Box[playerid] = CreatePlayerTextDraw(playerid, 213.000000, 173.000000, "_");
    PlayerTextDrawFont(playerid, ID_Photo_Box[playerid], 1);
    PlayerTextDrawLetterSize(playerid, ID_Photo_Box[playerid], 0.600000, 18.800003);
    PlayerTextDrawTextSize(playerid, ID_Photo_Box[playerid], 298.500000, 112.000000);
    PlayerTextDrawSetOutline(playerid, ID_Photo_Box[playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Photo_Box[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Photo_Box[playerid], 2);
    PlayerTextDrawColor(playerid, ID_Photo_Box[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Photo_Box[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Photo_Box[playerid], 2094792839);
    PlayerTextDrawUseBox(playerid, ID_Photo_Box[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ID_Photo_Box[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Photo_Box[playerid], 0);

    ID_Photo[playerid] = CreatePlayerTextDraw(playerid, 140.000000, 167.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, ID_Photo[playerid], 5);
    PlayerTextDrawLetterSize(playerid, ID_Photo[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, ID_Photo[playerid], 145.000000, 151.000000);
    PlayerTextDrawSetOutline(playerid, ID_Photo[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_Photo[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Photo[playerid], 1);
    PlayerTextDrawColor(playerid, ID_Photo[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Photo[playerid], 0);
    PlayerTextDrawBoxColor(playerid, ID_Photo[playerid], 0);
    PlayerTextDrawUseBox(playerid, ID_Photo[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_Photo[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Photo[playerid], 0);
    PlayerTextDrawSetPreviewModel(playerid, ID_Photo[playerid], 0);
    PlayerTextDrawSetPreviewRot(playerid, ID_Photo[playerid], -10.000000, 0.000000, -20.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, ID_Photo[playerid], 1, 1);

    ID_Photo_Info[playerid] = CreatePlayerTextDraw(playerid, 213.000000, 315.000000, "4x2_Full_Body_Photo");
    PlayerTextDrawFont(playerid, ID_Photo_Info[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_Photo_Info[playerid], 0.212497, 2.650002);
    PlayerTextDrawTextSize(playerid, ID_Photo_Info[playerid], 298.500000, 105.000000);
    PlayerTextDrawSetOutline(playerid, ID_Photo_Info[playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Photo_Info[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Photo_Info[playerid], 2);
    PlayerTextDrawColor(playerid, ID_Photo_Info[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Photo_Info[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Photo_Info[playerid], 2094792839);
    PlayerTextDrawUseBox(playerid, ID_Photo_Info[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ID_Photo_Info[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Photo_Info[playerid], 0);

    ID_Surname_Title[playerid] = CreatePlayerTextDraw(playerid, 292.000000, 179.000000, "Surname");
    PlayerTextDrawFont(playerid, ID_Surname_Title[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_Surname_Title[playerid], 0.195831, 1.450000);
    PlayerTextDrawTextSize(playerid, ID_Surname_Title[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_Surname_Title[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_Surname_Title[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Surname_Title[playerid], 1);
    PlayerTextDrawColor(playerid, ID_Surname_Title[playerid], 255);
    PlayerTextDrawBackgroundColor(playerid, ID_Surname_Title[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Surname_Title[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_Surname_Title[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_Surname_Title[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Surname_Title[playerid], 0);

    ID_Surname[playerid] = CreatePlayerTextDraw(playerid, 299.000000, 186.000000, "Zulan");
    PlayerTextDrawFont(playerid, ID_Surname[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_Surname[playerid], 0.316666, 2.549998);
    PlayerTextDrawTextSize(playerid, ID_Surname[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_Surname[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_Surname[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Surname[playerid], 1);
    PlayerTextDrawColor(playerid, ID_Surname[playerid], 255);
    PlayerTextDrawBackgroundColor(playerid, ID_Surname[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Surname[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_Surname[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_Surname[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Surname[playerid], 0);

    ID_First_Name_Title[playerid] = CreatePlayerTextDraw(playerid, 292.000000, 210.000000, "First_Name");
    PlayerTextDrawFont(playerid, ID_First_Name_Title[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_First_Name_Title[playerid], 0.195831, 1.450000);
    PlayerTextDrawTextSize(playerid, ID_First_Name_Title[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_First_Name_Title[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_First_Name_Title[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_First_Name_Title[playerid], 1);
    PlayerTextDrawColor(playerid, ID_First_Name_Title[playerid], 255);
    PlayerTextDrawBackgroundColor(playerid, ID_First_Name_Title[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_First_Name_Title[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_First_Name_Title[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_First_Name_Title[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_First_Name_Title[playerid], 0);

    ID_First_Name[playerid] = CreatePlayerTextDraw(playerid, 299.000000, 217.000000, "Roi");
    PlayerTextDrawFont(playerid, ID_First_Name[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_First_Name[playerid], 0.316666, 2.549998);
    PlayerTextDrawTextSize(playerid, ID_First_Name[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_First_Name[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_First_Name[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_First_Name[playerid], 1);
    PlayerTextDrawColor(playerid, ID_First_Name[playerid], 255);
    PlayerTextDrawBackgroundColor(playerid, ID_First_Name[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_First_Name[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_First_Name[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_First_Name[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_First_Name[playerid], 0);

    ID_Birthdate_Title[playerid] = CreatePlayerTextDraw(playerid, 292.000000, 241.000000, "Birth_Date");
    PlayerTextDrawFont(playerid, ID_Birthdate_Title[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_Birthdate_Title[playerid], 0.195831, 1.450000);
    PlayerTextDrawTextSize(playerid, ID_Birthdate_Title[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_Birthdate_Title[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_Birthdate_Title[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Birthdate_Title[playerid], 1);
    PlayerTextDrawColor(playerid, ID_Birthdate_Title[playerid], 255);
    PlayerTextDrawBackgroundColor(playerid, ID_Birthdate_Title[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Birthdate_Title[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_Birthdate_Title[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_Birthdate_Title[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Birthdate_Title[playerid], 0);

    ID_Birthdate[playerid] = CreatePlayerTextDraw(playerid, 299.000000, 248.000000, "March_02,_2002");
    PlayerTextDrawFont(playerid, ID_Birthdate[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_Birthdate[playerid], 0.316666, 2.549998);
    PlayerTextDrawTextSize(playerid, ID_Birthdate[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_Birthdate[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_Birthdate[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Birthdate[playerid], 1);
    PlayerTextDrawColor(playerid, ID_Birthdate[playerid], 255);
    PlayerTextDrawBackgroundColor(playerid, ID_Birthdate[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Birthdate[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_Birthdate[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_Birthdate[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Birthdate[playerid], 0);

    ID_Blood_Type_Title[playerid] = CreatePlayerTextDraw(playerid, 292.000000, 273.000000, "Blood_Type");
    PlayerTextDrawFont(playerid, ID_Blood_Type_Title[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_Blood_Type_Title[playerid], 0.195831, 1.450000);
    PlayerTextDrawTextSize(playerid, ID_Blood_Type_Title[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_Blood_Type_Title[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_Blood_Type_Title[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Blood_Type_Title[playerid], 1);
    PlayerTextDrawColor(playerid, ID_Blood_Type_Title[playerid], 255);
    PlayerTextDrawBackgroundColor(playerid, ID_Blood_Type_Title[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Blood_Type_Title[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_Blood_Type_Title[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_Blood_Type_Title[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Blood_Type_Title[playerid], 0);

    ID_Blood_Type[playerid] = CreatePlayerTextDraw(playerid, 299.000000, 282.000000, "O");
    PlayerTextDrawFont(playerid, ID_Blood_Type[playerid], 2);
    PlayerTextDrawLetterSize(playerid, ID_Blood_Type[playerid], 0.316666, 2.549998);
    PlayerTextDrawTextSize(playerid, ID_Blood_Type[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_Blood_Type[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_Blood_Type[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Blood_Type[playerid], 1);
    PlayerTextDrawColor(playerid, ID_Blood_Type[playerid], 255);
    PlayerTextDrawBackgroundColor(playerid, ID_Blood_Type[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Blood_Type[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_Blood_Type[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_Blood_Type[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Blood_Type[playerid], 0);

    ID_LV_Number[playerid] = CreatePlayerTextDraw(playerid, 278.000000, 321.000000, "LVN:_2842-242424-24");
    PlayerTextDrawFont(playerid, ID_LV_Number[playerid], 1);
    PlayerTextDrawLetterSize(playerid, ID_LV_Number[playerid], 0.499998, 2.000000);
    PlayerTextDrawTextSize(playerid, ID_LV_Number[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ID_LV_Number[playerid], 0);
    PlayerTextDrawSetShadow(playerid, ID_LV_Number[playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_LV_Number[playerid], 1);
    PlayerTextDrawColor(playerid, ID_LV_Number[playerid], 255);
    PlayerTextDrawBackgroundColor(playerid, ID_LV_Number[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_LV_Number[playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_LV_Number[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ID_LV_Number[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_LV_Number[playerid], 0);

    ID_Horizontal_Bar[0][playerid] = CreatePlayerTextDraw(playerid, 378.000000, 173.000000, "_");
    PlayerTextDrawFont(playerid, ID_Horizontal_Bar[0][playerid], 1);
    PlayerTextDrawLetterSize(playerid, ID_Horizontal_Bar[0][playerid], 0.600000, 0.150001);
    PlayerTextDrawTextSize(playerid, ID_Horizontal_Bar[0][playerid], 294.000000, 204.000000);
    PlayerTextDrawSetOutline(playerid, ID_Horizontal_Bar[0][playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Horizontal_Bar[0][playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Horizontal_Bar[0][playerid], 2);
    PlayerTextDrawColor(playerid, ID_Horizontal_Bar[0][playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Horizontal_Bar[0][playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Horizontal_Bar[0][playerid], 135);
    PlayerTextDrawUseBox(playerid, ID_Horizontal_Bar[0][playerid], 1);
    PlayerTextDrawSetProportional(playerid, ID_Horizontal_Bar[0][playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Horizontal_Bar[0][playerid], 0);

    ID_Horizontal_Bar[1][playerid] = CreatePlayerTextDraw(playerid, 378.000000, 316.000000, "_");
    PlayerTextDrawFont(playerid, ID_Horizontal_Bar[1][playerid], 1);
    PlayerTextDrawLetterSize(playerid, ID_Horizontal_Bar[1][playerid], 0.600000, 0.150001);
    PlayerTextDrawTextSize(playerid, ID_Horizontal_Bar[1][playerid], 294.000000, 204.000000);
    PlayerTextDrawSetOutline(playerid, ID_Horizontal_Bar[1][playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Horizontal_Bar[1][playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Horizontal_Bar[1][playerid], 2);
    PlayerTextDrawColor(playerid, ID_Horizontal_Bar[1][playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Horizontal_Bar[1][playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Horizontal_Bar[1][playerid], 135);
    PlayerTextDrawUseBox(playerid, ID_Horizontal_Bar[1][playerid], 1);
    PlayerTextDrawSetProportional(playerid, ID_Horizontal_Bar[1][playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Horizontal_Bar[1][playerid], 0);

    ID_Horizontal_Bar[2][playerid] = CreatePlayerTextDraw(playerid, 378.000000, 341.000000, "_");
    PlayerTextDrawFont(playerid, ID_Horizontal_Bar[2][playerid], 1);
    PlayerTextDrawLetterSize(playerid, ID_Horizontal_Bar[2][playerid], 0.600000, 0.150001);
    PlayerTextDrawTextSize(playerid, ID_Horizontal_Bar[2][playerid], 294.000000, 204.000000);
    PlayerTextDrawSetOutline(playerid, ID_Horizontal_Bar[2][playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Horizontal_Bar[2][playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Horizontal_Bar[2][playerid], 2);
    PlayerTextDrawColor(playerid, ID_Horizontal_Bar[2][playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Horizontal_Bar[2][playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Horizontal_Bar[2][playerid], 135);
    PlayerTextDrawUseBox(playerid, ID_Horizontal_Bar[2][playerid], 1);
    PlayerTextDrawSetProportional(playerid, ID_Horizontal_Bar[2][playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Horizontal_Bar[2][playerid], 0);

    ID_Security_Icon[0][playerid] = CreatePlayerTextDraw(playerid, 409.000000, 181.000000, "ld_tatt:5cross2");
    PlayerTextDrawFont(playerid, ID_Security_Icon[0][playerid], 4);
    PlayerTextDrawLetterSize(playerid, ID_Security_Icon[0][playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, ID_Security_Icon[0][playerid], 70.500000, 82.500000);
    PlayerTextDrawSetOutline(playerid, ID_Security_Icon[0][playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Security_Icon[0][playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Security_Icon[0][playerid], 1);
    PlayerTextDrawColor(playerid, ID_Security_Icon[0][playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Security_Icon[0][playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Security_Icon[0][playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_Security_Icon[0][playerid], 1);
    PlayerTextDrawSetProportional(playerid, ID_Security_Icon[0][playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Security_Icon[0][playerid], 0);

    ID_Security_Icon[1][playerid] = CreatePlayerTextDraw(playerid, 378.000000, 182.000000, "ld_tatt:5cross2");
    PlayerTextDrawFont(playerid, ID_Security_Icon[1][playerid], 4);
    PlayerTextDrawLetterSize(playerid, ID_Security_Icon[1][playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, ID_Security_Icon[1][playerid], 31.500000, 40.500000);
    PlayerTextDrawSetOutline(playerid, ID_Security_Icon[1][playerid], 1);
    PlayerTextDrawSetShadow(playerid, ID_Security_Icon[1][playerid], 0);
    PlayerTextDrawAlignment(playerid, ID_Security_Icon[1][playerid], 1);
    PlayerTextDrawColor(playerid, ID_Security_Icon[1][playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ID_Security_Icon[1][playerid], 255);
    PlayerTextDrawBoxColor(playerid, ID_Security_Icon[1][playerid], 50);
    PlayerTextDrawUseBox(playerid, ID_Security_Icon[1][playerid], 1);
    PlayerTextDrawSetProportional(playerid, ID_Security_Icon[1][playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ID_Security_Icon[1][playerid], 0);
    return 1;
}

NationalIDTD(playerid, toggle=true){
    if(toggle){
        PlayerTextDrawShow(playerid, ID_Background[playerid]);
        PlayerTextDrawShow(playerid, ID_Title_Background[playerid]);
        PlayerTextDrawShow(playerid, ID_Title[playerid]);
        PlayerTextDrawShow(playerid, ID_Photo_Box[playerid]);
        PlayerTextDrawShow(playerid, ID_Photo[playerid]);
        PlayerTextDrawShow(playerid, ID_Photo_Info[playerid]);
        PlayerTextDrawShow(playerid, ID_Surname_Title[playerid]);
        PlayerTextDrawShow(playerid, ID_Surname[playerid]);
        PlayerTextDrawShow(playerid, ID_First_Name_Title[playerid]);
        PlayerTextDrawShow(playerid, ID_First_Name[playerid]);
        PlayerTextDrawShow(playerid, ID_Birthdate_Title[playerid]);
        PlayerTextDrawShow(playerid, ID_Birthdate[playerid]);
        PlayerTextDrawShow(playerid, ID_Blood_Type_Title[playerid]);
        PlayerTextDrawShow(playerid, ID_Blood_Type[playerid]);
        PlayerTextDrawShow(playerid, ID_LV_Number[playerid]);
        PlayerTextDrawShow(playerid, ID_Horizontal_Bar[playerid][0]);
        PlayerTextDrawShow(playerid, ID_Horizontal_Bar[playerid][1]);
        PlayerTextDrawShow(playerid, ID_Horizontal_Bar[playerid][2]);
        PlayerTextDrawShow(playerid, ID_Security_Icon[playerid][0]);
        PlayerTextDrawShow(playerid, ID_Security_Icon[playerid][1]);
    }
    else{
        PlayerTextDrawHide(playerid, ID_Background[playerid]);
        PlayerTextDrawHide(playerid, ID_Title_Background[playerid]);
        PlayerTextDrawHide(playerid, ID_Title[playerid]);
        PlayerTextDrawHide(playerid, ID_Photo_Box[playerid]);
        PlayerTextDrawHide(playerid, ID_Photo[playerid]);
        PlayerTextDrawHide(playerid, ID_Photo_Info[playerid]);
        PlayerTextDrawHide(playerid, ID_Surname_Title[playerid]);
        PlayerTextDrawHide(playerid, ID_Surname[playerid]);
        PlayerTextDrawHide(playerid, ID_First_Name_Title[playerid]);
        PlayerTextDrawHide(playerid, ID_First_Name[playerid]);
        PlayerTextDrawHide(playerid, ID_Birthdate_Title[playerid]);
        PlayerTextDrawHide(playerid, ID_Birthdate[playerid]);
        PlayerTextDrawHide(playerid, ID_Blood_Type_Title[playerid]);
        PlayerTextDrawHide(playerid, ID_Blood_Type[playerid]);
        PlayerTextDrawHide(playerid, ID_LV_Number[playerid]);
        PlayerTextDrawHide(playerid, ID_Horizontal_Bar[playerid][0]);
        PlayerTextDrawHide(playerid, ID_Horizontal_Bar[playerid][1]);
        PlayerTextDrawHide(playerid, ID_Horizontal_Bar[playerid][2]);
        PlayerTextDrawHide(playerid, ID_Security_Icon[playerid][0]);
        PlayerTextDrawHide(playerid, ID_Security_Icon[playerid][1]);
    }
}

YCMD:wallet(playerid, params[], help){
    Dialog_ShowCallback(playerid, using public OnPlayerCheckWallet<iiiis>, DIALOG_STYLE_LIST, "Wallet Contents", "Balance\nIdentification Card\nDriver's License\nATM Card\nReceipts", "Choose", "Exit");

    Log(LOG_PLAYER_COMMAND, "[Player Command]: [%d] %s (/wallet)", playerid, GetPlayerNameEx(playerid));
    return 1;
}

forward OnPlayerCheckWallet(playerid, dialogid, response, listitem, string:inputtext[]);
public OnPlayerCheckWallet(playerid, dialogid, response, listitem, string:inputtext[]){
    if(response){
        SendClientMessageEx(playerid, COLOR_PLUM, MESSAGE_LOCAL, ""COL_ORANGE"** "COL_PLUM"%s took out his wallet and checks its contents. "COL_ORANGE"**", GetPlayerNameEx(playerid, false));
        if(listitem == 0){
            GivePlayerMoney(playerid, Character_Cash[playerid]);

            SendCustomMessage(playerid, MESSAGE_INFO, "You have checked your on-wallet cash, the amount is displayed in your player hud.");
            wait_ms(10000);
            ResetPlayerMoney(playerid);
        }
        else if(listitem == 1){
            if(!Character_ID[playerid]){
                SendCustomMessage(playerid, MESSAGE_INFO, "You don't have a National ID Card yet, please proceed to the LVSA to register for one.");
                return 1;
            }
            Dialog_ShowCallback(playerid, using public OnPlayerShowID<iiiis>, DIALOG_STYLE_LIST, "Show your ID", "Show to yourself\nShow to others", "Select", "Exit");
        }
        else if(listitem == 2){
            if(!Character_Drivers_License[playerid]){
                SendCustomMessage(playerid, MESSAGE_INFO, "You don't have a Driver's License yet, please proceed to the LV DMV to register for one.");
                return 1;
            }
            Dialog_ShowCallback(playerid, using public OnPlayerShowDriversLicense<iiiis>, DIALOG_STYLE_LIST, "Show your Driver's License", "Show to yourself\nShow to others", "Select", "Exit");
        }
    }
    return 1;
}

forward OnPlayerShowID(playerid, dialogid, response, listitem, string:inputtext[]);
public OnPlayerShowID(playerid, dialogid, response, listitem, string:inputtext[]){
    if(response){
        if(listitem == 0){
            NationalIDTD(playerid);
        }
        else if(listitem == 1){
            Dialog_ShowCallback(playerid, using public OnPlayerShowIDToOthers<iiiis>, DIALOG_STYLE_INPUT, "Show your ID", "Who do you want to show your National ID to?", "Enter", "Exit");
        }
    }
}

forward OnPlayerShowIDToOthers(playerid, dialogid, response, listitem, string:inputtext[]);
public OnPlayerShowIDToOthers(playerid, dialogid, response, listitem, string:inputtext[]){
    if(response){
        if(!IsNumeric(inputtext)){
            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Wrong Input!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid ID.", inputtext);
            return 1;
        }
        if(!IsPlayerConnected(strval(inputtext))){
            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Player Does not exist!", "Back", "", ""COL_WHITE"The ID you have entered is not currently connected to the server.");
            return 1;
        }
        NationalIDTD(strval(inputtext));
    }
    return 1;
}

forward OnPlayerShowDriversLicense(playerid, dialogid, response, listitem, string:inputtext[]);
public OnPlayerShowDriversLicense(playerid, dialogid, response, listitem, string:inputtext[]){
    if(response){
        if(listitem == 0){
            NationalIDTD(playerid);
        }
        else if(listitem == 1){
            Dialog_ShowCallback(playerid, using public OnPlayerShowDLToOthers<iiiis>, DIALOG_STYLE_INPUT, "Show your Driver's License", "Who do you want to show your Driver's License to?", "Enter", "Exit");
        }
    }
}

forward OnPlayerShowDLToOthers(playerid, dialogid, response, listitem, string:inputtext[]);
public OnPlayerShowDLToOthers(playerid, dialogid, response, listitem, string:inputtext[]){
    if(response){
        if(!IsNumeric(inputtext)){
            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Wrong Input!", "Back", "", ""COL_WHITE"    Your Input: "COL_LIME"%s\n\n"COL_RED"[ERROR]: "COL_WHITE"You have entered an invalid ID.", inputtext);
            return 1;
        }
        if(!IsPlayerConnected(strval(inputtext))){
            Dialog_ShowEx(playerid, DIALOG_STYLE_MSGBOX, "Player Does not exist!", "Back", "", ""COL_WHITE"The ID you have entered is not currently connected to the server.");
            return 1;
        }
        NationalIDTD(strval(inputtext));
    }
    return 1;
}