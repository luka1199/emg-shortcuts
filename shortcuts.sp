#include <sourcemod>
#define CFGScrim "scrim.cfg"
#define CFGIntern "intern.cfg"
#define CFGRetakes "retakes.cfg"
#define CFGStop "stop.cfg"
public OnPluginStart()
{
    RegConsoleCmd("sm_scrim", Command_scrim);
    RegConsoleCmd("sm_intern", Command_intern);
    RegConsoleCmd("sm_retake", Command_retakes);
    RegConsoleCmd("sm_retakes", Command_retakes);
    RegConsoleCmd("sm_stop", Command_stop);
}
public Action Command_scrim(int client, int args)
{
    ServerCommand("exec %s", CFGScrim);
}
public Action Command_intern(int client, int args)
{
    ServerCommand("exec %s", CFGIntern);
}
public Action Command_retakes(int client, int args)
{
    ServerCommand("exec %s", CFGRetakes);
}
public Action Command_stop(int client, int args)
{
    ServerCommand("exec %s", CFGStop);
}