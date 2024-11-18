# Day 14 Writing a self-replicating script to mimic worm behavior.
## Explanation
1. Timer Setup:
   * Uses `wmic os get localdatetime` to fetch the system time.
   * The script calculates the elapsed time in seconds.
   * The loop runs until `elapsed_time` reaches `max_time` (180 seconds).
2. User Prompt:
   * After 3 minutes, the script pauses and prompts the user to decide whether to continue.
   * If the user types `yes`, the script restarts from the main loop. If `no`, it exits.
3. Replication and Execution:
   * Creates a new folder in each target directory.
   * Copies itself (`%~f0`) into the newly created folder and executes the copied script.

## User Flow
1. The script runs for 3 minutes, creating nested folders and replicating itself.
2. After 3 minutes, the user is asked whether to continue or stop.
3. If the user chooses to continue, the script runs for another 3 minutes, repeating the process.
