#include <YSI_Coding\y_hooks>

enum dialog_id{
    // - {Misc}
    DIALOG_MISC = 1,
    // - {AdminCMD Module}
    DIALOG_ADMIN_MENU,
    DIALOG_ADMIN_HELP,
    DIALOG_VEHICLE_SELECT,
    
    // - {Creation Module}
    DIALOG_NAME_TD,
    DIALOG_AGE_TD,
    DIALOG_SEX_TD[2],
    DIALOG_NATIONALITY_TD[2],
    DIALOG_PERSONALITY_TD[2],
    DIALOG_RELIGION_TD,
    DIALOG_REGISTER_PASSWORD_TD,
    DIALOG_CONFIRM_PASSWORD_TD,
    DIALOG_EMAIL_TD,
    DIALOG_CAPTCHA_TD,
    DIALOG_LOGIN_PASSWORD_TD,
};
new Dialog_ID[dialog_id];

hook OnGameModeInit(){
    for(new i; i < sizeof(Dialog_ID); i++){
        Dialog_ID[dialog_id:i] = i;
    }
    return 1;
}

static const title[] = "Character Creation";

ShowDialogToPlayer(playerid, dialogid){
    if(dialogid == Dialog_ID[DIALOG_NAME_TD]){
        static const body[] = ""COL_LIMEGREEN"Enter your character's Name\n\n"COL_AQUA"[TIP]: "COL_WHITE"The character name can also be changed In-Characterly at the LVSA or \n"COL_WHITE"Las Venturas Statistics Authority find out the location ICly.\n\n"COL_PURPLE"[EXAMPLE]: "COL_WHITE"John_Smith";
        ShowPlayerDialog(playerid, Dialog_ID[DIALOG_NAME_TD], DIALOG_STYLE_INPUT, title, body, "Confirm", "Back");
    }
    else if(dialogid == Dialog_ID[DIALOG_AGE_TD]){
        static const body[] = ""COL_LIMEGREEN"Enter your character's Age\n\n"COL_AQUA"[TIP]: "COL_WHITE"The age can also be changed In-Characterly at the LVSA or\nLas Venturas Statistics Authority if you want to change your birthdate.\nFInd out the location ICly.\n\n"COL_PURPLE"[EXAMPLE]: "COL_WHITE"23";
        ShowPlayerDialog(playerid, Dialog_ID[DIALOG_AGE_TD], DIALOG_STYLE_INPUT, title, body, "Confirm", "Back");
    }
    else if(dialogid == Dialog_ID[DIALOG_SEX_TD][0]){
        static const body[] = ""COL_LIMEGREEN"Choose your character's Sex\n\n"COL_ORANGE"[WARNING]: "COL_WHITE"Choosing your character's sex cannot be changed later,\nyou can only choose for your character's sex now.";
        ShowPlayerDialog(playerid, Dialog_ID[DIALOG_SEX_TD][0], DIALOG_STYLE_MSGBOX, title, body, "Continue", "Back");
    }
    else if(dialogid == Dialog_ID[DIALOG_NATIONALITY_TD][0]){
        static const body[] = ""COL_LIMEGREEN"Choose your character's Nationality\n\n"COL_ORANGE"[TIP]: "COL_WHITE"The character's nationality can also be changed at the LVDFA or \nLas Venturas Department of Foreign Affairs find out the location ICly.";
        ShowPlayerDialog(playerid, Dialog_ID[DIALOG_NATIONALITY_TD][0], DIALOG_STYLE_MSGBOX, title, body, "Continue", "Back");
    }
    else if(dialogid == Dialog_ID[DIALOG_PERSONALITY_TD][0]){
        static const body[] = ""COL_LIMEGREEN"Choose your character's Personality\n\n"COL_ORANGE"[TIP]: "COL_WHITE"The character's personality can also be later using /settings.";
        ShowPlayerDialog(playerid, Dialog_ID[DIALOG_PERSONALITY_TD][0], DIALOG_STYLE_MSGBOX, title, body, "Continue", "Back");
    }
    else if(dialogid == Dialog_ID[DIALOG_RELIGION_TD]){
        static const body[] = "Enter your character's Religion";
        ShowPlayerDialog(playerid, Dialog_ID[DIALOG_RELIGION_TD], DIALOG_STYLE_INPUT, title, body, "Select", "Back");
    }
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == Dialog_ID[DIALOG_SEX_TD][0]){
        if(response){
            static const body[] = "Male\nFemale";
            ShowPlayerDialog(playerid, Dialog_ID[DIALOG_SEX_TD][1], DIALOG_STYLE_LIST, title, body, "Continue", "Back");
        }
    }
    else if(dialogid == Dialog_ID[DIALOG_NATIONALITY_TD][0]){
        static body[MAX_STRING], string[MAX_STRING];
        format(body, MAX_STRING, "");
        for(new i; i < sizeof(nationalities); i++){
            format(string, MAX_STRING, "%s\n", nationalities[i]);
            strcat(body, string);
        }
        ShowPlayerDialog(playerid, Dialog_ID[DIALOG_NATIONALITY_TD][1], DIALOG_STYLE_LIST, title, body, "Select", "Back");
    }
    else if(dialogid == Dialog_ID[DIALOG_PERSONALITY_TD][0]){
        static const body[] = "\
            Charismatic\n\
            Extrovert\n\
            Introvert\n\
            Intelligent\n\
            Skillful\
        ";
        ShowPlayerDialog(playerid, Dialog_ID[DIALOG_PERSONALITY_TD][1], DIALOG_STYLE_LIST, title, body, "Select", "Back");
    }
    return 1;
}