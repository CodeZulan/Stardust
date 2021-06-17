#include <YSI_Coding\y_hooks>

enum dialog_id{
    // - {Misc}
    DIALOG_MISC = 1,
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