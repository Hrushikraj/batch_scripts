## Persistence using `schtasks` in Batch Scripts

The `schtasks` command is used in batch scripts to create, edit, and remove scheduled tasks, simulating persistence through them.

### Command Breakdown:

- **`schtasks /create`**: Creates a new scheduled task.
- **`/sc onlogon`**: Specifies the schedule for the task (runs on logon).
- **`/tn "%taskName%"`**: Defines the task name (e.g., `MyPersistentTask`).
- **`/tr "%fileToPersist%"`**: Specifies the program or script to run (e.g., `C:\path\to\your\program.exe`).
- **`/rl highest`**: Ensures the task runs with the highest privileges (administrator rights).
- **`/f`**: Forces the creation of the task without confirmation if a task with the same name already exists.
- **`/delay`**: Sets the delay time after the task trigger event (e.g., logon).


