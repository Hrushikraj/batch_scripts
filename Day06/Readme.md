# Writing a script to create persistence by adding to the startup folder or registry.
2  Methods :
  - Startup Folder Method <br />
  - Registry Method

## Method 1: Startup Folder Method

- You can copy or create a shortcut to your script or executable in the user's Startup folder. The path to the Startup folder can be found using the `%appdata%` variable.
- This script copies the file you want to persist into the Startup folder, so it runs every time the user logs in.

## Method 2:  Registry Method

- You can add a registry entry to the **Run** key to make a program run when the user logs in. 
- This script creates a registry entry in the **Run** key so that the specified program runs automatically at login.
- The registry key can be found under:

- **User-Level Persistence:**  
  `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run`

- **System-Wide Persistence (Requires Admin Rights):**  
  `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run`

### Requirements

- **Admin Rights:**  
  Adding to the system-wide `HKEY_LOCAL_MACHINE` requires administrative privileges.

- **User-Specific or System-Wide:**  
  Adding to `HKEY_CURRENT_USER` affects only the logged-in user, while `HKEY_LOCAL_MACHINE` affects all users.

- **Persistence Risks:**  
  This type of persistence is common in malware, so using it outside of a testing or controlled environment can be risky and may trigger antivirus alerts.

