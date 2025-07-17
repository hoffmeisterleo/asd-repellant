# ASD Repellant: Auto-Hide `.asd` Files

This script automatically hides all `.asd` files in a folder and its subfolders on macOS. It also monitors the folder for new `.asd` files and hides them as soon as they appear.

## Prerequisites

- **macOS**
- **Homebrew** (for easy installation of dependencies)

## Installation

1. **Install Homebrew** (if you don't have it yet):

   Open Terminal and run:
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install fswatch**:

   ```sh
   brew install fswatch
   ```

## Setup

1. **Download or copy `AutoHider.sh` into the folder you want to monitor.**

2. **Make the script executable:**

   ```sh
   chmod +x ./AutoHider.sh
   ```

## Usage

- **To monitor the current folder:**

  ```sh
  ./AutoHider.sh .
  ```

- **To monitor a specific folder:**

  ```sh
  ./AutoHider.sh /path/to/folder
  ```

When started, the script will immediately hide all existing `.asd` files in the target folder and its subfolders. It will then continue to monitor for new `.asd` files and hide them automatically.

## Unhide All `.asd` Files

If you want to unhide all `.asd` files in the folder, run:

```sh
find . -type f -name "*.asd" -exec chflags nohidden {} \;
```

---

**Enjoy a
