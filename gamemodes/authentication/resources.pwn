#include <YSI_Coding\y_hooks>

#define PLAYER_NOT_DOWNLOADING      0
#define PLAYER_DOWNLOADING          1
#define PLAYER_ALREADY_DOWNLOADED   2

new
    PlayerText:Download_Screen_TD[MAX_PLAYERS],
    PlayerText:Download_Text_TD[MAX_PLAYERS],
    PlayerText:Download_Title_TD[MAX_PLAYERS][2],
    PlayerText:Download_NPC_TD[MAX_PLAYERS][2],
    PlayerText:Download_Vehicle_TD[MAX_PLAYERS];

new
    IsPlayerDownloading[MAX_PLAYERS];

DownloadScreenTD(playerid, toggle=true){
    if(toggle){
        PlayerTextDrawShow(playerid, Download_Screen_TD[playerid]);
        PlayerTextDrawShow(playerid, Download_Text_TD[playerid]);
        PlayerTextDrawShow(playerid, Download_Title_TD[playerid][0]);
        PlayerTextDrawShow(playerid, Download_Title_TD[playerid][1]);
        PlayerTextDrawShow(playerid, Download_NPC_TD[playerid][0]);
        PlayerTextDrawShow(playerid, Download_NPC_TD[playerid][1]);
        PlayerTextDrawShow(playerid, Download_Vehicle_TD[playerid]);
    }
    else{
        PlayerTextDrawHide(playerid, Download_Screen_TD[playerid]);
        PlayerTextDrawHide(playerid, Download_Text_TD[playerid]);
        PlayerTextDrawHide(playerid, Download_Title_TD[playerid][0]);
        PlayerTextDrawHide(playerid, Download_Title_TD[playerid][1]);
        PlayerTextDrawHide(playerid, Download_NPC_TD[playerid][0]);
        PlayerTextDrawHide(playerid, Download_NPC_TD[playerid][1]);
        PlayerTextDrawHide(playerid, Download_Vehicle_TD[playerid]);
    }
}

hook OnPlayerConnect(playerid){
    IsPlayerDownloading[playerid] = PLAYER_ALREADY_DOWNLOADED;

    Download_Screen_TD[playerid] = CreatePlayerTextDraw(playerid, 320.000000, -14.000000, "_");
    PlayerTextDrawFont(playerid, Download_Screen_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Download_Screen_TD[playerid], 0.600000, 51.800003);
    PlayerTextDrawTextSize(playerid, Download_Screen_TD[playerid], 298.500000, 650.000000);
    PlayerTextDrawSetOutline(playerid, Download_Screen_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Download_Screen_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Download_Screen_TD[playerid], 2);
    PlayerTextDrawColor(playerid, Download_Screen_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Download_Screen_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Download_Screen_TD[playerid], 255);
    PlayerTextDrawUseBox(playerid, Download_Screen_TD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Download_Screen_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Download_Screen_TD[playerid], 0);

    Download_Text_TD[playerid] = CreatePlayerTextDraw(playerid, 343.000000, 415.000000, "Downloading_Resources...");
    PlayerTextDrawFont(playerid, Download_Text_TD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, Download_Text_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Download_Text_TD[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Download_Text_TD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Download_Text_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Download_Text_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Download_Text_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Download_Text_TD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Download_Text_TD[playerid], 50);
    PlayerTextDrawUseBox(playerid, Download_Text_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Download_Text_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Download_Text_TD[playerid], 0);

    Download_Title_TD[playerid][0] = CreatePlayerTextDraw(playerid, 33.000000, 44.000000, "Stardust");
    PlayerTextDrawFont(playerid, Download_Title_TD[playerid][0], 2);
    PlayerTextDrawLetterSize(playerid, Download_Title_TD[playerid][0], 1.474997, 7.000000);
    PlayerTextDrawTextSize(playerid, Download_Title_TD[playerid][0], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Download_Title_TD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, Download_Title_TD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Download_Title_TD[playerid][0], 1);
    PlayerTextDrawColor(playerid, Download_Title_TD[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, Download_Title_TD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, Download_Title_TD[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, Download_Title_TD[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, Download_Title_TD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Download_Title_TD[playerid][0], 0);

    Download_Title_TD[playerid][1] = CreatePlayerTextDraw(playerid, 253.000000, 104.000000, "Roleplay");
    PlayerTextDrawFont(playerid, Download_Title_TD[playerid][1], 3);
    PlayerTextDrawLetterSize(playerid, Download_Title_TD[playerid][1], 1.562499, 3.500000);
    PlayerTextDrawTextSize(playerid, Download_Title_TD[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Download_Title_TD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, Download_Title_TD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Download_Title_TD[playerid][1], 1);
    PlayerTextDrawColor(playerid, Download_Title_TD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, Download_Title_TD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, Download_Title_TD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, Download_Title_TD[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, Download_Title_TD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Download_Title_TD[playerid][1], 0);

    Download_NPC_TD[playerid][0] = CreatePlayerTextDraw(playerid, 450.000000, 11.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, Download_NPC_TD[playerid][0], 5);
    PlayerTextDrawLetterSize(playerid, Download_NPC_TD[playerid][0], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Download_NPC_TD[playerid][0], 112.500000, 150.000000);
    PlayerTextDrawSetOutline(playerid, Download_NPC_TD[playerid][0], 0);
    PlayerTextDrawSetShadow(playerid, Download_NPC_TD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, Download_NPC_TD[playerid][0], 1);
    PlayerTextDrawColor(playerid, Download_NPC_TD[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, Download_NPC_TD[playerid][0], 125);
    PlayerTextDrawBoxColor(playerid, Download_NPC_TD[playerid][0], 255);
    PlayerTextDrawUseBox(playerid, Download_NPC_TD[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, Download_NPC_TD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Download_NPC_TD[playerid][0], 0);
    PlayerTextDrawSetPreviewModel(playerid, Download_NPC_TD[playerid][0], 262);
    PlayerTextDrawSetPreviewRot(playerid, Download_NPC_TD[playerid][0], -10.000000, 0.000000, 20.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, Download_NPC_TD[playerid][0], 1, 1);

    Download_NPC_TD[playerid][1] = CreatePlayerTextDraw(playerid, 525.000000, 11.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, Download_NPC_TD[playerid][1], 5);
    PlayerTextDrawLetterSize(playerid, Download_NPC_TD[playerid][1], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Download_NPC_TD[playerid][1], 112.500000, 150.000000);
    PlayerTextDrawSetOutline(playerid, Download_NPC_TD[playerid][1], 0);
    PlayerTextDrawSetShadow(playerid, Download_NPC_TD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, Download_NPC_TD[playerid][1], 1);
    PlayerTextDrawColor(playerid, Download_NPC_TD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, Download_NPC_TD[playerid][1], 125);
    PlayerTextDrawBoxColor(playerid, Download_NPC_TD[playerid][1], 255);
    PlayerTextDrawUseBox(playerid, Download_NPC_TD[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, Download_NPC_TD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Download_NPC_TD[playerid][1], 0);
    PlayerTextDrawSetPreviewModel(playerid, Download_NPC_TD[playerid][1], 242);
    PlayerTextDrawSetPreviewRot(playerid, Download_NPC_TD[playerid][1], -10.000000, 0.000000, -34.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, Download_NPC_TD[playerid][1], 1, 1);

    Download_Vehicle_TD[playerid] = CreatePlayerTextDraw(playerid, 171.000000, 338.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, Download_Vehicle_TD[playerid], 5);
    PlayerTextDrawLetterSize(playerid, Download_Vehicle_TD[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Download_Vehicle_TD[playerid], 169.000000, 156.000000);
    PlayerTextDrawSetOutline(playerid, Download_Vehicle_TD[playerid], 0);
    PlayerTextDrawSetShadow(playerid, Download_Vehicle_TD[playerid], 0);
    PlayerTextDrawAlignment(playerid, Download_Vehicle_TD[playerid], 1);
    PlayerTextDrawColor(playerid, Download_Vehicle_TD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Download_Vehicle_TD[playerid], 125);
    PlayerTextDrawBoxColor(playerid, Download_Vehicle_TD[playerid], 255);
    PlayerTextDrawUseBox(playerid, Download_Vehicle_TD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Download_Vehicle_TD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Download_Vehicle_TD[playerid], 0);
    PlayerTextDrawSetPreviewModel(playerid, Download_Vehicle_TD[playerid], 522);
    PlayerTextDrawSetPreviewRot(playerid, Download_Vehicle_TD[playerid], -10.000000, 0.000000, 47.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, Download_Vehicle_TD[playerid], 21, 1);
    return 1;
}

hook OnPlayerRequestDownload(playerid, type, crc){
    IsPlayerDownloading[playerid] = PLAYER_DOWNLOADING;
    DownloadScreenTD(playerid);
    return 1;
}

public OnPlayerFinishedDownloading(playerid, virtualworld){
    if(IsPlayerDownloading[playerid] == PLAYER_DOWNLOADING){
        DownloadScreenTD(playerid, false);

        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "SELECT u_id FROM users WHERE u_name = '%s'", GetPlayerNameEx(playerid));
        mysql_tquery(SQL_Handle, SQL_Buffer, "AccountCheck", "i", playerid);

        IsPlayerDownloading[playerid] = PLAYER_NOT_DOWNLOADING;
    }
    else if(IsPlayerDownloading[playerid] == PLAYER_ALREADY_DOWNLOADED){
        mysql_format(SQL_Handle, SQL_Buffer, MAX_STRING, "SELECT u_id FROM users WHERE u_name = '%s'", GetPlayerNameEx(playerid));
        mysql_tquery(SQL_Handle, SQL_Buffer, "AccountCheck", "i", playerid);

        IsPlayerDownloading[playerid] = PLAYER_NOT_DOWNLOADING;
    }
    return 1;
}