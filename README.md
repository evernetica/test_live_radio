# test_live_radio

## Description

 - simple design
 - project architecture: bloc pattern(cubit) with clean architecture
 - project architecture is prepared for upscaling  
 - there are  3 screens on the top app lvl: splash / main / fail
 - splash screen: add 2 sec delayed for loading (for some background loading after upscale project)
 - there are two swipes: left/right swipe on imagePlaceholder for next/prev music track
 - api: google sheet document
 - DI: get_it
 - if music is playing , there is media controller in notification
 - background service is done and working
 - init - autoStartPlay=false, next/prev track autoStartPlay=true
