# Utils Scripts Description

## 1 - dayztools-mod-test.bat

Script that run dayz tools workbench with a specific mod as parameter, so we can debug that mod. This scripts requires two paramters:

1) steamapps full directory

2) Packed mod PBO P:/ full directory

Example of execution from cmd

```bat
dayztools-mod-test.bat "C:\Program Files (x86)\Steam\steamapps" "P:\PackedPbos\@FirstModPacked"
``` 

OBS: The medium tutorial of first mode example(https://medium.com/@jkamienski/beginners-guide-to-dayz-mods-development-de3055a10d31) has a section("Testing the mod with Script Editor") explaining how to manually run the workbench with -mod parameter.