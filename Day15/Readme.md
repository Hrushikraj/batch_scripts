
# Detecting Virtual Environment (e.g., VirtualBox)
The following Batch script detects whether it's running in a VirtualBox environment by querying system attributes.
## Explanation
1. Using wmic:
   * Queries the `baseboard` manufacturer and computer system model using `wmic`.
   * These values often include identifiers like VIRTUALBOX or VMware in virtual environments.

2. Environment Checks:
   * Checks if the manufacturer or model contains common virtualization keywords (e.g., VIRTUALBOX).
   * Performs a case-insensitive comparison using `/i`.

3. Outputs:
   * If a VirtualBox environment is detected, it outputs a corresponding message.
   * If no matches are found, it assumes the script is running on a physical machine or an unrecognized virtual environment.
4. Method 3: Environment-Specific Artifacts
   * Uses wmic to detect virtualization-related manufacturers (e.g., VMware, VirtualBox, QEMU).
   * If such artifacts are present, the script exits.

## :loudspeaker:Adding check for Administrator Rights (Optional)
```bat
::Check Administrator rights 
net session 2>&1
if %errorlevel% neq 0 (
 echo Run the script with administrator mode
 pause
 exit /b )
```




