/*************************************************************************************************
 *     ________  _________  ________  ________  ________  ___  ___  ________  _________          *
 *    |\   ____\|\___   ___\\   __  \|\   __  \|\   ___ \|\  \|\  \|\   ____\|\___   ___\        *
 *    \ \  \___|\|___ \  \_\ \  \|\  \ \  \|\  \ \  \_|\ \ \  \\\  \ \  \___|\|___ \  \_|        *
 *     \ \_____  \   \ \  \ \ \   __  \ \   _  _\ \  \ \\ \ \  \\\  \ \_____  \   \ \  \         *
 *      \|____|\  \   \ \  \ \ \  \ \  \ \  \\  \\ \  \_\\ \ \  \\\  \|____|\  \   \ \  \        *
 *        ____\_\  \   \ \__\ \ \__\ \__\ \__\\ _\\ \_______\ \_______\____\_\  \   \ \__\       *
 *       |\_________\   \|__|  \|__|\|__|\|__|\|__|\|_______|\|_______|\_________\   \|__|       *
 *       \|_________|                                                 \|_________|               *
 *                                                                                               *
 *************************************************************************************************
 *                                        - ROLEPLAY -                                           *
 *                                   GAMEMODE BY: CodeZulan                                      *
 ************************************************************************************************/
// --------------
// [Dependencies]
// --------------
#include <a_samp>
// ----------------------------------
// - {YSI Includes}
// -- {Startup Settings}
#define CGEN_MEMORY (20000)
#define YSI_NO_OPTIMISATION_MESSAGE
#define YSI_NO_CACHE_MESSAGE
#define YSI_NO_VERSION_CHECK
#define YSI_YES_HEAP_MALLOC
// -- {Includes}
#include <YSI_Visual\y_commands>
#include <YSI_Visual\y_dialog>
#include <YSI_Coding\y_va>
#include <YSI_Players\y_groups>
// ----------------------------------
#include <a_mysql>
#include <bcrypt>
#include <sscanf2>
#include <streamer>
#include <strlib>
#include <env>
#include <PawnPlus>
// ----------------------------------

#define RCON_PASSWORD_LENGTH    10

// ---------
// [Modules]
// ---------
// - {Coding Submodule}
#include "coding/constants.pwn"
#include "coding/extensions.pwn"
#include "coding/nationalities.pwn"
#include "coding/colors.pwn"
#include "coding/getter.pwn"
#include "coding/checker.pwn"
#include "coding/message.pwn"
#include "coding/log.pwn"
// - {Misc Submodule}
#include "misc/mappings/lampposts.pwn"
#include "misc/mappings/airport.pwn"
#include "misc/mappings/black_market.pwn"
// - {Database Submodule}
#include "database/connection.pwn"
// - {Player Submodule}
#include "player/information.pwn"
#include "player/disconnection.pwn"
#include "player/groups.pwn"
// - {Authentication Submodule}
#include "authentication/check.pwn"
#include "authentication/creation.pwn"
#include "authentication/registration.pwn"
#include "authentication/login.pwn"
#include "authentication/resources.pwn"
// - {Roleplay Submodule}
#include "roleplay/commands.pwn"
#include "roleplay/chat.pwn"
// - {Business Submodule}
#include "business/casino/information.pwn"
#include "business/casino/startup.pwn"
#include "business/casino/createcasino.pwn"
#include "business/casino/entrance.pwn"

// -----------
// [Callbacks]
// -----------
public OnGameModeInit(){
    AllowInteriorWeapons(true);
    DisableInteriorEnterExits();
    return 1;
}

public OnPlayerConnect(playerid){
    SetPlayerShopName(playerid, "");
    EnableStuntBonusForPlayer(playerid, false);
    EnablePlayerCameraTarget(playerid, true);
    return 1;
}

// ---------------
// [Main Function]
// ---------------
main(){
    // Generate Random RCON Password
    SendRconCommandEx("rcon_password %s", GetRandomCode(RCON_PASSWORD_LENGTH));

    return 1;
}
