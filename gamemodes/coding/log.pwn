#include <YSI_Coding\y_hooks>

native fwriteStr(File:handle, AmxString:string) = fwrite;

#define PATH_MODULELOG          "logs/module_log.txt"

enum{
    LOG_MODULE,
};

new
    File:Module;

Log(type, const string[]){
    if(type == LOG_MODULE){
        Module = fopen(""PATH_MODULELOG"", io_append);
        if(Module){
            fwriteStr(Module, str_format("[%s | %s] %s\n", GetDateFormatted(), GetTimeFormatted(), string));
            fclose(Module);
        }
        else{
            printf("Error while loading module_log.txt");
        }
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