# tkt-hon Midwars Tourney

    Alias "create_midwars_botmatch_1v1" "set teambotmanager_legion; set teambotmanager_hellbourne; BotDebugEnable; StartGame practice test mode:botmatch map:midwars teamsize:1 spectators:1 allowduplicate:true; g_botDifficulty 3; g_camDistanceMax 10000; g_camDistanceMaxSpectator 10000;"

    Alias "create_midwars_botmatch" "set teambotmanager_legion; set teambotmanager_hellbourne; BotDebugEnable; StartGame practice test mode:botmatch map:midwars teamsize:5 spectators:1 allowduplicate:true; g_botDifficulty 3; g_camDistanceMax 10000; g_camDistanceMaxSpectator 10000;"

## Teams

### Default bots by organizers

    Alias "team_default_legion" "set teambotmanager_legion 3_guys_and_5_bots; AddBot 1 3_guys_and_5_bots_Devourer; AddBot 1 3_guys_and_5_bots_MonkeyKing; AddBot 1 3_guys_and_5_bots_Nymphora; AddBot 1 3_guys_and_5_bots_PuppetMaster; AddBot 1 3_guys_and_5_bots_Valkyrie"

    Alias "team_default_hellbourne" "set teambotmanager_hellbourne 3_guys_and_5_bots; AddBot 2 3_guys_and_5_bots_Devourer_test; AddBot 2 3_guys_and_5_bots_MonkeyKing_test; AddBot 2 3_guys_and_5_bots_Nymphora_test; AddBot 2 3_guys_and_5_bots_PuppetMaster_test; AddBot 2 3_guys_and_5_bots_Valkyrie_test"

##speed it up nice
host_timeScale

#itemapi
http://hon.gamepedia.com/API_ItemList
