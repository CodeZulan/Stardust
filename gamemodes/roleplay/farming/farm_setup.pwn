#include <YSI_Coding\y_hooks>

#define MAX_PLOTS       1

new farm_plots[MAX_PLOTS];
new Float:farm_plot[MAX_PLOTS][] = {
    {
        -173.3282,-68.6450,
        -181.3190,-83.4232,
        -198.1925,-84.6114,
        -192.9819,-61.6855
    }
};

hook OnGameModeInit(){
    for(new i; i < MAX_PLOTS; i++){
        farm_plots[i] = CreateDynamicPolygon(farm_plot[i]);
    }
    return 1;
}