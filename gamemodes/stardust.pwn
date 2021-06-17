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
#define YSI_NO_OPTIMISATION_MESSAGE
#define YSI_NO_CACHE_MESSAGE
#define YSI_NO_VERSION_CHECK
#define YSI_YES_HEAP_MALLOC
// -- {Includes}
#include <YSI_Visual\y_commands>
#include <YSI_Visual\y_dialog>
#include <YSI_Coding\y_va>
// ----------------------------------
#include <a_mysql>
#include <bcrypt>
#include <sscanf2>
#include <streamer>
#include <strlib>
#include <env>
#include <PawnPlus>
// ----------------------------------

// ------------------
// [Global Variables]
// ------------------
new bool:ServerInitiated;

// ---------
// [Modules]
// ---------
// - {Coding Submodule}
#include "coding/constants.pwn"
#include "coding/extensions.pwn"
#include "coding/nationalities.pwn"
#include "coding/colors.pwn"
#include "coding/dialogs.pwn"
#include "coding/getter.pwn"
#include "coding/checker.pwn"
#include "coding/message.pwn"
// - {Misc Submodule}
#include "misc/mappings/lampposts.pwn"
#include "misc/mappings/airport.pwn"
#include "misc/mappings/black_market.pwn"
// - {Database Submodule}
#include "database/connection.pwn"
// - {Player Submodule}
#include "player/information.pwn"
#include "player/disconnection.pwn"
// - {Authentication Submodule}
#include "authentication/check.pwn"
#include "authentication/creation.pwn"
#include "authentication/registration.pwn"
#include "authentication/login.pwn"
#include "authentication/resources.pwn"
// - {Roleplay Submodule}
#include "roleplay/commands.pwn"
#include "roleplay/chat.pwn"

// -----------
// [Callbacks]
// -----------
public OnGameModeInit(){
    if(ServerInitiated){
        print("Server initiating...");
    }
    return 1;
}

// ---------------
// [Main Function]
// ---------------
main(){
    if(ServerInitiated){
        print("Server has started...");
    }
    return 1;
}