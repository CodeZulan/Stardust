#include <YSI_Coding\y_hooks>

native fwriteStr(File:handle, AmxString:string) = fwrite;

#define PATH_MODULELOG                       "logs/module_log.txt"
#define PATH_PLAYER_CONNECTIONLOG            "logs/player/connection_log.txt"
#define PATH_PLAYER_CHATLOG                  "logs/player/chat_log.txt"
#define PATH_PLAYER_COMMANDLOG               "logs/player/command_log.txt"

enum{
    LOG_MODULE,
    LOG_PLAYER_CONNECTION,
    LOG_PLAYER_CHAT,
    LOG_PLAYER_COMMAND,
};

new
    File:Module;

Log(type, const fmat[], va_args<>){
    static
        log[MAX_STRING];

    va_format(log, MAX_STRING, fmat, va_start<2>);

    if(type == LOG_MODULE){
        Module = fopen(""PATH_MODULELOG"", io_append);

        fwriteStr(Module, str_format("[%s | %s] %s\n", GetDateFormatted(), GetTimeFormatted(), log));
        fclose(Module);
    }
    else if(type == LOG_PLAYER_CONNECTION){
        Module = fopen(""PATH_PLAYER_CONNECTIONLOG"", io_append);

        fwriteStr(Module, str_format("[%s | %s] %s.\n", GetDateFormatted(), GetTimeFormatted(), log));
        fclose(Module);
    }
    else if(type == LOG_PLAYER_CHAT){
        Module = fopen(""PATH_PLAYER_CHATLOG"", io_append);

        fwriteStr(Module, str_format("[%s | %s] %s\n", GetDateFormatted(), GetTimeFormatted(), log));
        fclose(Module);
    }
    else if(type == LOG_PLAYER_COMMAND){
        Module = fopen(""PATH_PLAYER_COMMANDLOG"", io_append);

        fwriteStr(Module, str_format("[%s | %s] %s.\n", GetDateFormatted(), GetTimeFormatted(), log));
        fclose(Module);
    }
}

hook OnGameModeInit(){
    Module = fopen(""PATH_MODULELOG"", io_append);
    fwrite(Module, "---------------------------\n");
    fwrite(Module, "          MODULES          \n");
    fwrite(Module, "---------------------------\n\n");
    fclose(Module);

    Log(LOG_MODULE, "Loading Modules...");
    return 1;
}