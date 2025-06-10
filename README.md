# Log Archive Tool

## Overview

The **Log Archive Tool** is a command-line utility that allows users to compress and archive logs from a specified directory. It creates compressed `.tar.gz` archives of logs, timestamps the archives, and stores them in a new directory. This tool is useful for maintaining a clean system by archiving old logs while keeping them in a compressed format for future reference.

## Features

- **Compress Logs:** Compresses logs into a `.tar.gz` archive.
- **Timestamped Archives:** The archive filenames include the date and time of creation (e.g., `logs_archive_YYYYMMDD_HHMMSS.tar.gz`).
- **Log File:** The tool logs the date and time of each archive to a log file.

## Requirements

- **Unix-based System** (Linux or macOS)
- **tar** command (pre-installed in most systems)
- **Bash** (or compatible shell)

## Installation

1. Clone the repository to your local machine:
    ```bash
    git clone https://github.com/<your-username>/log-archive-tool.git
    cd log-archive-tool
    ```

2. Make the `log-archive.sh` script executable:
    ```bash
    chmod +x log-archive.sh
    ```

## Usage

To run the Log Archive Tool, use the following command:

```bash
./log-archive.sh <log-directory>
