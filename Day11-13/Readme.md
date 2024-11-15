# File Hiding Techniques Using Batch Scripts

This document outlines various techniques for hiding files using batch scripts, including modifying file attributes, moving files to obscure locations, and creating decoy files.

---

## **Method 1: Hiding Files with `attrib` Command**
The `attrib` command can hide files by applying the **hidden** and **system** attributes, making them invisible in Windows Explorer by default.

- **`+h`**: Adds the hidden attribute.
- **`+s`**: Adds the system attribute (makes the file more obscure).
- **`"%file_path%"`**: Specifies the file or directory to be hidden.

---

## **Method 2: Moving Files to an Obscure Directory**
This technique involves moving a file to a less obvious location, such as deep inside system folders.

- Files are moved to directories like `System32\drivers`, making them harder for casual users to find.
- Ensure the target folder exists before moving the file.

---

## **Method 3: Hiding Entire Folders**
Instead of hiding individual files, you can hide an entire folder. The folder will not be visible in Windows Explorer, making it an effective technique for obfuscation.

---

## **Method 4: Redirecting Attention (Decoy Files)**
You can create a fake file as a decoy while hiding the real one. 

- The **decoy file** misleads users into thinking it is the actual file.
- The **real file** remains hidden for stealth.

---

## **Method 5: Making Files Hidden in Plain Sight**
Renaming files to appear like system files or appending system-reserved extensions (e.g., `.dll`) makes them blend in with legitimate system files.

---

## **Key Points**
1. **`attrib`**: Hides files using attributes like `+h` and `+s`.
2. **Obscure Locations**: Files hidden in deep system folders are harder to find.
3. **System-Like Names**: Renaming files to system-like names (e.g., `.dll`) enhances stealth.
4. **Decoy Files**: Mislead users while keeping the actual file hidden.

---

## **Caution**
- These techniques are commonly used in malware development and can be detected by security tools.
- **Always use such scripts responsibly** and only in a controlled, legal environment.
- Misusing these techniques can have serious legal consequences.
