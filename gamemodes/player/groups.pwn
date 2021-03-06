#include <YSI_Coding\y_hooks>

new
    Group:Group_LoggedIn,
    Group:Group_Management;

hook OnGameModeInit(){
    Group_LoggedIn = Group_Create();
    Group_Management = Group_Create();

    Group_SetGlobalCommandDefault(ALLOW);

    Log(LOG_MODULE, "[player/] Player groups loaded...");
    return 1;
}