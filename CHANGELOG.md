# 2020-9-16 Firmware

This is the lastest release version for Android 6.

## version Description:
### Open Android:

1. The new option in the toolbox allows the volume key to act as l3r3
When the volume acts as l3r3, you can press start + R1 or start + R2 to change the volume in non mouse mode. Start + volume to adjust the screen brightness
2. The new option in the toolbox can automatically turn off the screen or keep the LCD on when HDMI is inserted.

3. Add a filter white list to the option to close the background process in the toolbox

4. Add system startup script /system/bin/boot.sh
Players can insert their own commands into the system's startup process to change the system's behavior. this boot.sh The script is located in the init program.
Modify the script, for example, Mount ext4 partition in sdcard to /data partition to realize capacity expansion, or perform other root operations.

5. Fix the problem of small probability drift of left rocker

6. Integrated OTA(Update.apk And recovery)

7. When the battery power is less than 7%, it will automatically shut down.

8. Fix the potential MAC address problem of WiFi

9. From this version, preinstall will be kept in sdcard for users to restore at any time.

### Retroid:

1. Add screen scaling and rotation options

	It can help GBA to keep the original proportion, or let the 1945ii flight shooting game in FBA rotate 90 degrees and use the right rocker to play.
Scope of application: except PSP, DC and N64 emulators. It needs to be set separately for each game. Global settings are not supported.
How to operate: after opening the game, press the home key to operate in the pop-up menu. After continuing the game, the screen takes effect and is valid for the current game.

2. Improve the functions of games/download

	Update the game MD5 database, cover more ROM samples, and open this database and the fast MD5 algorithm (MD5 Utils.java)
Support game state save and key customization in games/download
Design rule: the ROM stored in the games/download directory of sdcard will be recognized intelligently. By calculating the MD5 and MD5 database of ROM (games/external_games)Match to predict its emulator, game name, and other attributes.
If it cannot be recognized intelligently, the user needs to manually associate the emulator in system Settings > game settings > external game management.
Updating the MD5 database sample helps to improve the intelligent recognition rate. Users can also modify the database to change the game name.

3. Fix the R key mapping of GBA

4. Factory menu, registration process optimization, new offline registration

5. Fix the problem that the newly downloaded GBA cannot run after all games are deleted

6. Open all emulator state functions

	Note that not all games can be saved. If the save fails, it may be related to the specific game.

7. DC emulator is replaced by FlyCast

8. New function. When HDMI is inserted, there are options to turn off or not to turn off the screen.
Long press home to enter the system settings, and select HDMI settings in the handheld settings

9. Fix the potential MAC address problem of WiFi

	If old users have the same MAC address, please delete the file /nvdata/APCFG/APRDEB/WIFI in Android. For example, rm /nvdata/APCFG/APRDEB/WIFI will be produced again after the system restarts.

10. New tips menu

	In the game setting, when the user opens the Turbo fire option, it will prompt start + A to start the continuous firing. In the game, press and hold the A key to realize continuous firing. Start + B is the same.
Game setting external game management, prompting users to put ROM in games/download in sdcard
The main menu prompts the user to press HOME to enter the system settings

11. Delete the hiden WiFi connection function.

	This function has bugs in the underlying SDK and is not available. User's misoperation will lead to black screen of the system.

12. FPS can be displayed in new game settings

	The game settings in the system settings can turn on the FPS display, which is only valid for some games.

13. Repair keyboard and add special character support.

14. Fix mame139 mame78 issue.
