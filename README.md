# Course page
http://tkt-hon.github.io/midwars/

# tkt-hon Midwars Tourney

    Alias "create_midwars_botmatch_1v1" "set teambotmanager_legion; set teambotmanager_hellbourne; BotDebugEnable; StartGame practice test mode:botmatch map:midwars teamsize:1 spectators:1 allowduplicate:true; g_botDifficulty 3; g_camDistanceMax 10000; g_camDistanceMaxSpectator 10000;"

    Alias "newgame" "set teambotmanager_legion; set teambotmanager_hellbourne; BotDebugEnable; StartGame practice test mode:botmatch map:midwars teamsize:5 spectators:1 allowduplicate:true; g_botDifficulty 3; g_camDistanceMax 10000; g_camDistanceMaxSpectator 10000;legion_add_bots;hellbourme_add_bots"

## Teams

### Default bots by organizers

    Alias "legion_add_bots" "set teambotmanager_legion 3_guys_and_5_bots; AddBot 1 3_guys_and_5_bots_Devourer; AddBot 1 3_guys_and_5_bots_MonkeyKing; AddBot 1 3_guys_and_5_bots_Nymphora; AddBot 1 3_guys_and_5_bots_PuppetMaster; AddBot 1 3_guys_and_5_bots_Valkyrie"

    Alias "hellbourme_add_bots" "set teambotmanager_default; AddBot 2 Default_Devourer; AddBot 2 Default_MonkeyKing; AddBot 2 Default_Nymphora; AddBot 2 Default_PuppetMaster; AddBot 2 Default_Valkyrie"

    Alias "newgamewithoutbots" "set teambotmanager_legion; set teambotmanager_hellbourne; BotDebugEnable; StartGame practice test mode:botmatch map:midwars teamsize:5 spectators:1 allowduplicate:true; g_botDifficulty 3; g_camDistanceMax 10000; g_camDistanceMaxSpectator 10000;"
    

### Load single bot made by us
    Alias "monkeyking_add" "set teambotmanager_legion 3_guys_and_5_bots; AddBot 1 3_guys_and_5_bots_MonkeyKing;
    Alias "devourer_add" "set teambotmanager_legion 3_guys_and_5_bots; AddBot 1 3_guys_and_5_bots_Devourer;
    Alias "valkyrie_add" "set teambotmanager_legion 3_guys_and_5_bots; AddBot 1 3_guys_and_5_bots_Valkyrie;
    Alias "nymphora_add" "set teambotmanager_legion 3_guys_and_5_bots; AddBot 1 3_guys_and_5_bots_Nymphora;
    Alias "puppetmaster_add" "set teambotmanager_legion 3_guys_and_5_bots; AddBot 1 3_guys_and_5_bots_PuppetMaster;

### Load enemy bot from defaults

	Alias "vihu_monkeyking_add" "set teambotmanager_hellbourne default; AddBot 2 Default_MonkeyKing;
    Alias "vihu_devourer_add" "set teambotmanager_hellbourne default; AddBot 2 Default_Devourer;
    Alias "vihu_valkyrie_add" "set teambotmanager_hellbourne default; AddBot 2 Default_Valkyrie;
    Alias "vihu_nymphora_add" "set teambotmanager_hellbourne default; AddBot 2 Default_Nymphora;
    Alias "vihu_puppetmaster_add" "set teambotmanager_hellbourne default; AddBot 2 Default_PuppetMaster;

##speed it up nice
host_timeScale

#itemapi
http://hon.gamepedia.com/API_ItemList

Bot tutorial Pyro: 

http://forum.hon.garena.com/showthread.php?45138-Bot-Creation-Tutorial
