### Clearing System Logs Using BAT Scripts

This script demonstrates how to clear all event logs on a Windows system using the `wevtutil` command.

#### Features:
1. **Admin Rights Check**:
   - Ensures the script is run with administrative privileges.
2. **Automated Log Clearing**:
   - Iterates through all available event logs and clears them.
3. **Progress Feedback**:
   - Displays each log name as it is being cleared.

#### Usage:
1. Save the script as `clear_logs.bat`.
2. Run the script as Administrator.
3. The script will clear all system logs and display a success message.

#### Commands Used:
- `wevtutil el`: Lists all event logs.
- `wevtutil cl [log name]`: Clears the specified log.

**Important**: Clearing event logs can remove valuable system diagnostic information. Use this script responsibly and only when authorized.
