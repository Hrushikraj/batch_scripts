### Disabling Windows Defender or firewall temporarily using BAT scripts

This script demonstrates how to disable the Windows Defender or firewall temporarily.

#### Features:
1. **Admin Rights Check**:
   - Ensures the script is run with administrative privileges.
2. **Uses netsh**:
   - Uses netsh command to diisable and enable.
3. **Progress Feedback**:
   - Displays each log name as it is being cleared.

#### Usage:
1. Save the script as `.bat`.
2. Run the script as Administrator.
3. The script will disable windows firewall and display a success message.
4. Added option to Re-enable the Firewall if required.

#### Commands Used:
- `netsh`: Network shell.
- `allprofiles/all`: selects all states (Domain/ Private/ Public).
- `sc`: Uses sc.exe to execute the script

**Important**: 
1. Disabling of Windows Firewall can allow various downloads through malwares. Use this script responsibly and only when authorized.
2. The Second Script need to be executed first then need to add it as filter in windows scan so that it gets acess.
