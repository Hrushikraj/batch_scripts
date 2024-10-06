# Modifying System Policies using Batch Scripts

## General Approach

- To modify any system policy via batch script, you need to know the corresponding registry key and value. Most user-specific policies are found under:
`HKCU\Software\Microsoft\Windows\CurrentVersion\Policies`

- For machine-wide policies, you can look under `HKLM` (Local Machine) instead of `HKCU` (Current User).

### Explanation:

>[!IMPORTANT]
>Execute the scripts in Administrator Mode
- `reg add`: Adds a new registry key to modify system behavior.
  - Example: `HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System` is where system policies are stored for the current user.
- `/v "DisableTaskMgr"`: The name of the value. This disables Task Manager when set to 1.
- `/t REG_DWORD`: Specifies the value type as a DWORD (32-bit integer).
- `/d 1`: Data value of 1 (disables Task Manager).
- `/f`: Forces the registry change without prompting.
- `reg delete`: Removes the `DisableTaskMgr` value to re-enable Task Manager.
> [!CAUTION]
> Enable Controlpanel Script does not work on all devices, so be carefull while testing.

### Example Script:

```batch
:: Disable Task Manager
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 1 /f

:: Enable Task Manager (remove the registry key)
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /f
