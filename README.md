## Batch script for bypassing windows defender 
https://medium.com/@malikhabibkhan181/bypass-windows-defender-with-a-batch-script-habib-ullah-56fd1cbf7870

### Common Windows System Variables

- **`%USERPROFILE%`**: Points to the current user's home directory (e.g., `C:\Users\xyz abc`).
- **`%APPDATA%`**: Points to the Application Data folder (e.g., `C:\Users\xyz abc\AppData\Roaming`).
- **`%ProgramFiles%`**: Points to the Program Files folder (e.g., `C:\Program Files`).
- **`%SystemRoot%`**: Points to the Windows system folder (e.g., `C:\Windows`).


# batch_scripts
batch scripts for beginners
# 100-Day BAT Scripting Challenge (Malware Development & Analysis)

### Week 1: Basic BAT Scripting for Malware Behavior
- **Day 1**: Learn basic echo commands and comments, but with a twist of creating a decoy message script.
- **Day 1**: Variables and environmental manipulation in BAT scripts, such as changing paths or user settings.
- **Day 1**: Basic file operations—creating, deleting, or hiding files to simulate malicious behavior.
- **Day 2**: Using `if` statements to simulate malware conditions (e.g., if file exists, execute a payload).
- **Day 3**: File obfuscation techniques like renaming critical files.
- **Day 4**: Basic automation to simulate system changes (e.g., disabling system tools).
- **Day 5**: Dropping and executing files via batch scripts.
    > [Clik Here to Read Instructions of Day05 Batch Scripts](https://github.com/Hrushikraj/batch_scripts/blob/main/Day05/README.md)

### Week 2: Working with Persistence Mechanisms
- **Day 6**: [Writing a script to create persistence by adding to the startup folder or registry.](https://github.com/Hrushikraj/batch_scripts/blob/main/Day06/)
- **Day 7**: [Simulating persistence through scheduled tasks.](https://github.com/Hrushikraj/batch_scripts/tree/main/Day07)
- **Day 8**: [Modify system policies using scripts.](https://github.com/Hrushikraj/batch_scripts/tree/main/Day08)
- **Day 09**: [Writing scripts that modify system boot configurations.](https://github.com/Hrushikraj/batch_scripts/tree/main/Day09)
- **Day 10**: [Using `schtasks` to automate repetitive malicious tasks](https://github.com/Hrushikraj/batch_scripts/tree/main/Day10).
- **Day 11-13**: [Implementing file hiding techniques using BAT scripts.](https://github.com/Hrushikraj/batch_scripts/tree/main/Day11-13)
- **Day 14**: [Writing a self-replicating script to mimic worm behavior.](https://github.com/Hrushikraj/batch_scripts/tree/main/Day14)

### Week 3: Anti-Analysis and Evasion Techniques
- **Day 15**: [Detecting if the script is running in a virtual environment (e.g., VirtualBox).](https://github.com/Hrushikraj/batch_scripts/tree/main/Day14)
- **Day 16**: Implementing anti-debugging techniques in BAT scripts.
- **Day 17**: Evading detection by hiding script operations in the background.
- **Day 18**: Bypassing User Account Control (UAC) in Windows.
- **Day 19**: Obfuscating BAT scripts using variable manipulation and encoding.
- **Day 20**: Clearing system logs using BAT scripts.
- **Day 21**: Disabling Windows Defender or firewall temporarily using BAT scripts.

### Week 4: Payload Development
- **Day 22**: Writing a script that simulates a ransomware attack (e.g., renaming files with a fake extension).
- **Day 23**: Implementing keylogging with a BAT script that logs user input.
- **Day 24**: Creating a script to extract and log system information (e.g., IP, system architecture).
- **Day 25**: Simulating a browser hijack by modifying host files or browser shortcuts.
- **Day 26**: Writing a script that mimics privilege escalation attempts.
- **Day 27**: Developing a simple data exfiltration script using network commands.
- **Day 28**: Creating a BAT-based Denial of Service (DoS) script.

### Week 5: Analysis-Oriented Scripting
- **Day 29**: Writing a script that simulates malware analysis—gather system/process info and logs it.
- **Day 30**: Automating the execution of a suspicious file and logging its behavior.
- **Day 31**: Simulating malware analysis by monitoring process and CPU usage.
- **Day 32**: Writing a script to extract information from a system and check for malware indicators.
- **Day 33**: Simulating an infected environment by creating and executing hidden processes.
- **Day 34**: Writing a BAT script to sandbox certain files and monitor their behavior.
- **Day 35**: Simulate detecting anti-virus presence and triggering malware evasion techniques.

### Week 6: Combining Malware Techniques with Analysis
- **Day 36**: Writing a BAT script that combines persistence and evasion techniques.
- **Day 37**: Automating a malware lab setup using BAT scripts to create and analyze ELF/PE files.
- **Day 38**: Creating a script that combines payload delivery with logging capabilities.
- **Day 39**: Writing a script to simulate a trojan—open a backdoor or maintain remote access.
- **Day 40**: Simulating polymorphic malware by modifying the script dynamically each time it runs.
- **Day 41**: Writing a script to download and execute a payload from a remote server.
- **Day 42**: Combining obfuscation, payload delivery, and evasion in one script.

### Week 7: Advanced Malware Techniques
- **Day 43**: Implementing process hollowing or injection techniques in a BAT script.
- **Day 44**: Writing a script that disables security services while staying persistent.
- **Day 45**: Creating a fake encryption script (simulating ransomware behavior).
- **Day 46**: Writing a BAT script to simulate a rootkit—hiding processes or files.
- **Day 47**: Using a BAT script to exfiltrate sensitive files over the network.
- **Day 48**: Writing a stealthy malware script that operates undetected by common monitoring tools.
- **Day 49**: Simulating fileless malware using a BAT script that only operates in memory.

### Week 8: Reverse Engineering Oriented BAT Scripts
- **Day 50**: Writing scripts that simulate reverse engineering techniques, e.g., modifying malware binaries.
- **Day 51**: Creating BAT scripts that unpack and analyze packed malware.
- **Day 52**: Writing a script that generates dynamic execution logs for post-analysis.
- **Day 53**: Automating the extraction of malware indicators from a system using BAT scripts.
- **Day 54**: Creating a script that tests and validates malware signatures in files.
- **Day 55**: Writing a script that simulates automated reverse engineering tools (e.g., dumping file contents).
- **Day 56**: Developing a malware triage script that automatically analyzes unknown files and provides reports.

### Week 9-14: Complex Projects and Evasion
- **Day 57-63**: Build a complete malware that combines persistence, evasion, and stealth (for educational purposes only).
- **Day 64-70**: Write a BAT script that automates the collection of forensic artifacts.
- **Day 71-77**: Develop a complete analysis tool that scans for malware indicators and logs system activity.
- **Day 78-84**: Write a script to simulate the evasion of sandbox environments by detecting analysis tools.
- **Day 85-91**: Build a modular malware framework using BAT scripting, allowing the selection of different payloads, evasion techniques, and persistence methods.
- **Day 92-98**: Simulate a real-world attack scenario by combining various scripts into a larger, multi-stage attack simulation.
- **Day 99**: Polish and optimize your malware scripts for stealth, efficiency, and persistence.
- **Day 100**: Final project—create a malware that can bypass basic anti-virus and sandbox environments, but keep it in an isolated lab environment.

