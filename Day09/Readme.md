# Writing scripts that modify system boot configurations.
 Modifying system boot configurations using batch scripts typically involves using the `bcdedit` command. 
 The `bcdedit` tool allows you to modify the Boot Configuration Data (BCD), which stores boot configuration options for the system.
### 1.change-boot-time.bat 
- This script changes the boot menu timeout (the time the system waits before booting the default OS) to 10 seconds.

### 2.disable-driver-signature-enforcement.bat
- This script disables driver signature enforcement, which may be needed to install unsigned drivers.

### 3.enable-boot-debugging.bat
- This script enables debugging mode on the boot manager for troubleshooting purposes.

### Explanation:

>[!IMPORTANT]
>Execute the scripts in Administrator Mode
- `bcdedit /timeout <seconds>`: Sets the timeout for the boot menu.
<!--
- `bcdedit /default <identifier>`: Sets the specified OS as the default entry. You can use {current} for the currently booted OS. -->
- `bcdedit /debug on`: Enables debugging mode at boot.
- `bcdedit /set nointegritychecks on`: Disables driver signature enforcement.
> [!CAUTION]
> When making changes to the boot configuration, make sure you double-check the commands before making any changes because doing so can prevent the system from booting correctly if done wrong.

