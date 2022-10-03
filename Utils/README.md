# Utils Scripts Description

## 1 - dayztools-mod-test.bat

Script that run dayz tools workbench with a specific mod as parameter, so we can debug that mod. This scripts requires two paramters:

1) steamapps full directory

2) Mod directory

Example of execution from terminal

```bat
dayztools-mod-test.bat "C:\Program Files (x86)\Steam\steamapps" "P:\FirstMod"
``` 

OBS: The [medium tutorial of first mode example](https://medium.com/@jkamienski/beginners-guide-to-dayz-mods-development-de3055a10d31) has a section("Testing the mod with Script Editor") explaining how to manually run the workbench with -mod parameter.

## 2 - dayz-mod-mission-test.bat

Script that run dayz diagnotisc version with a specified mod and mission. The script parameters are:

1) steamapps full directory

2) Mod directory

3) Mission directory(directory that contains init.c file)

Example of execution from terminal

```bat
dayztools-mod-test.bat "D:\SteamLibrary\steamapps" "P:\Mods\FirstMod"
```

OBS: The git [Arkensor DayZCommunityOfflineMode repository](https://github.com/Arkensor/DayZCommunityOfflineMode) contains a tutorial explaining how to download and run dayz missions in offline mode.

## 3 - create-symbolic-link-mods.bat

Script that create a symbolic link from repository Mods Folder to P:/ Project Drive, so we can work in the mods from dayz tools scripts editor. This bat has no parameters and need to be run as administrator from repository Utils/create-symbolic-link-mods.bat folder. Just click to run

# Observations:
- The "Execs" folder contains bat files for fast execution of the bats explained before and can be used to execute the bats without need to always pass the parameters. No need to commit changes in this files, so use ```git update-index --skip-worktree .\Utils\Execs\filename.bat``` if you want to ignore the changes in git.