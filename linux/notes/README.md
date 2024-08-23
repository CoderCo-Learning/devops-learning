# Linux Notes 📚

Welcome to my collection of Linux notes! This repository is where I document my learning journey with Linux, capturing key commands, concepts, and practices that I find useful. This helps me solidify my understanding and keeps a handy reference for future use. Linux is incredibly powerful and flexible, and having these notes ensures I can effectively manage and utilise this versatile system.

## Table of Contents

- [Introduction](#introduction)
- [Basic Commands](#basic-commands)
- [File Management](#file-management)
- [System Monitoring](#system-monitoring)
- [Networking](#networking)
- [Scripting](#scripting)
- [References](#references)

## Introduction

Linux is a robust operating system widely used for various purposes, from server management to desktop computing. As I dive deeper into Linux, I find it essential to document and reflect on the commands and tools that enhance my productivity and system management skills. This repository serves as a personal reference to track what I learn, making it easier to recall and apply Linux commands effectively in real-world scenarios.

## Basic Commands

| Command | Description                         |
|---------|-------------------------------------|
| `ls`    | **List directory contents**: This command displays the files and directories in your current working directory. It’s like looking inside a folder to see what's there. |
| `cd`    | **Change directory**: Use this command to navigate between different directories in your filesystem. Think of it as moving between folders in your file explorer. |
| `pwd`   | **Print working directory**: This command shows the path of the directory you’re currently in. It’s helpful to keep track of where you are in the directory structure. |
| `mkdir` | **Make a new directory**: This command creates a new directory where you can organise files. It’s like creating a new folder to keep things tidy. |
| `rm`    | **Remove files or directories**: This command deletes files or directories. Be careful with this command, as it removes items permanently. |
| `cp`    | **Copy files or directories**: This command duplicates files or directories, creating a copy with the same contents. It’s useful for backups or creating multiple versions. |
| `mv`    | **Move or rename files or directories**: Use this command to move files to a different location or rename them. It’s like dragging and dropping files in your file explorer. |
| `touch` | **Create an empty file or update the timestamp**: This command can create a new empty file or update the last modified time of an existing file. It’s handy for creating placeholder files. |

## File Management

### Viewing and Editing Files

- **View File Content:** Use `cat filename` to display the contents of a file in the terminal or `less filename` for a paginated view that allows scrolling. This helps you quickly check file contents.
- **Edit Files:** You can use text editors like `nano filename`, `vim filename`, or `code filename` (for VS Code) to modify files. `nano` is user-friendly for beginners, while `vim` offers powerful editing capabilities.

### Permissions

- **Change Permissions:** The `chmod` command allows you to set file permissions, like read, write, and execute rights for the user, group, and others. For example, `chmod 755 filename` grants full permissions to the owner and read-execute permissions to others.
- **Change Ownership:** Use `chown` to change the file owner and group. For instance, `chown user:group filename` assigns the file to a new user and group, which is essential for managing file access.

## System Monitoring

- **Check System Uptime:** `uptime` shows how long the system has been running since the last reboot, along with current load averages. It’s useful for understanding system stability.
- **Monitor System Resources:** Commands like `top` and `htop` provide a dynamic view of system processes and resource usage. `htop` offers an enhanced, more user-friendly interface compared to `top`.
- **Disk Usage:** Use `df -h` to check available and used disk space on all mounted filesystems, and `du -sh` to view the size of a specific directory. This helps in managing disk resources effectively.

## Networking

- **Check IP Address:** Commands like `ip a` or `ifconfig` display your system’s network interfaces and their IP addresses. This is crucial for network configuration and troubleshooting.
- **Ping a Host:** `ping example.com` sends packets to a specified domain to check connectivity and measure response time. It’s a fundamental tool for diagnosing network issues.
- **Check Open Ports:** Use `netstat -tuln` to list open ports and their associated services. This helps in monitoring network activity and ensuring security.

## Scripting

### Basic Shell Script

```bash
#!/bin/bash
echo "Hello, World!"
