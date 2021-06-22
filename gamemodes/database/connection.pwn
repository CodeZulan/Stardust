#include <YSI_Coding\y_hooks>

static
    SQL_Host[MAX_STRING],
    SQL_User[MAX_STRING],
    SQL_Password[MAX_STRING],
    SQL_Database[MAX_STRING];

new
    MySQL:SQL_Handle;
new
    SQL_Buffer[MAX_STRING];

hook OnGameModeInit(){
    Env_Get("MYSQL_HOST", SQL_Host);
    Env_Get("MYSQL_USER", SQL_User);
    Env_Get("MYSQL_PASSWORD", SQL_Password);
    Env_Get("MYSQL_DATABASE", SQL_Database);

    SQL_Handle = mysql_connect(SQL_Host, SQL_User, SQL_Password, SQL_Database);

    if(mysql_errno(SQL_Handle)){
        static SQL_Error[MAX_STRING];
        print("[MySQL] ERROR: There is a problem connecting to the database...");
        mysql_error(SQL_Error);
        printf("[MySQL] ERROR DETAILS: %s", SQL_Error);
        print("[MySQL] WARNING: The server will now shutdown...");
        SendRconCommand("exit");
    }
    else{
        print("[MySQL] INFO: Database connection has been established.");
    }

    Log(LOG_MODULE, "[database/] MYSQL Connection loaded...");
    return 1;
}

hook OnGameModeExit(){
    mysql_close(SQL_Handle);
    print("[MySQL] INFO: Database connection has been closed.");
    return 1;
}