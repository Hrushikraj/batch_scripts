# Batch Scripts for Downloading and Executing Files

This repository contains batch scripts that utilize different methods to download files from the internet and execute them. Below are the methods used in the scripts:

## 1. PowerShell

- **Description**: The script uses PowerShell's `Invoke-WebRequest` cmdlet to download files from a specified URL. This method is versatile and can handle various types of files.
- **Usage**: Ideal for environments where PowerShell is available and enabled. It provides clear feedback during the download process and can handle complex URLs.

## 2. bitsadmin

- **Description**: This script utilizes `bitsadmin`, a command-line tool that manages background file transfers. It is useful for downloading files in the background without blocking the user interface.
- **Usage**: Suitable for larger files or when you want to minimize the impact on the user's experience. It can resume downloads if interrupted, making it reliable for larger files.

## 3. certutil

- **Description**: The script employs `certutil`, a command-line utility primarily used for managing certificates, to download files from a URL. This method is often less known but effective.
- **Usage**: Useful in scenarios where other download methods are unavailable. It can handle downloads without the need for additional tools and is included in many Windows installations by default.

## Important Notes

- Ensure that you have an active internet connection when running these scripts.
- Use caution when downloading files from unknown or untrusted sources.
- These scripts are intended for educational purposes and should be executed in controlled environments.

