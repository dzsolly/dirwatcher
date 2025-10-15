# Directory Inspector Script

An interactive Bash script for inspecting the contents of any directory on RHEL 8.x and compatible systems (AlmaLinux, Rocky Linux). It provides a human-readable listing, total size, and counts of files and subdirectories.

## 🔧 Features

- Prompts the user to enter a directory path
- Lists contents with size, type, and modification time
- Displays total disk usage of the directory
- Counts files and subdirectories separately
- Compatible with RHEL 8.x, AlmaLinux, Rocky Linux

## 📦 Requirements

- Bash shell (/bin/bash)
- Standard GNU utilities: ls, du, find, wc

## 🚀 Usage

```bash
chmod +x dir-inspector.sh
./dir-inspector.sh
```

You’ll be prompted to enter a directory path. The script will then display:

- A detailed listing (ls -lh)
- Total size (du -sh)
- Number of files (find -type f)
- Number of directories (find -type d)


## 📂 Example Output

```bash
📁 Directory Inspector - RHEL 8.x Compatible
-------------------------------------------
Enter the path of the directory to inspect: /var/log

🔍 Listing contents of: /var/log

-rw-r--r-- 1 root root  12K Oct 14 14:00 messages
drwxr-xr-x 2 root root 4.0K Oct 14 13:00 httpd
...

📊 Total size of directory:
56M    /var/log

📦 Number of files:
128

📂 Number of directories:
12
```


## 🛡️ License
MIT License — feel free to use, modify, and distribute.
