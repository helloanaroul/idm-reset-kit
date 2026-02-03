# Installation Guide

## 📋 System Requirements

Before installing IDM Trial Reset, ensure your system meets the following requirements:

### Minimum Requirements
- **Operating System**: Windows 7 SP1 or later
- **Architecture**: 32-bit or 64-bit
- **Administrator Rights**: Required for registry modifications
- **Internet Download Manager**: Any version installed

### Recommended Requirements
- **Operating System**: Windows 10/11
- **RAM**: 2 GB or more
- **Storage**: 1 MB free space
- **Internet Connection**: For update checks (optional)

## 🚀 Installation Methods

### Method 1: Direct Executable (Recommended - No Installation)

This is the simplest method requiring no installation:

1. **Download the Executable**
   - Visit the [Releases page](https://github.com/helloanarul/idm-reset-kit/releases/latest)
   - Download `IDM_Trial_Reset.exe`

2. **Run the Application**
   - Right-click on the downloaded file
   - Select "Run as administrator"
   - Windows SmartScreen may show a warning - click "More info" then "Run anyway"

3. **First Use**
   - The application will start immediately
   - No installation or setup required
   - All files are self-contained

### Method 2: Portable Usage

For maximum portability:

1. **Create a Folder**
   ```
   C:\Tools\idm-reset-kit\
   ```

2. **Extract Files**
   - Copy the executable to your folder
   - Create a shortcut on your desktop (optional)

3. **Run Anytime**
   - Double-click the executable
   - Always run as administrator

## 🔧 Usage Instructions

### Basic Trial Reset

1. **Launch the Application**
   - Right-click → "Run as administrator"
   - Wait for the interface to load

2. **Reset Trial Period**
   - Click on "Trial reset" tab
   - Click "Reset the IDM trial now" button
   - Wait for confirmation message
   - IDM will now show 30 days remaining

### Automatic Reset Setup

1. **Enable Auto-reset**
   - Check the "Automatically" checkbox
   - The tool will schedule resets every 15 days
   - Runs automatically at Windows startup

2. **Verify Setup**
   - Check Windows Task Scheduler (optional)
   - Registry entry created at:
     ```
     HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run
     ```

### Permanent Registration

1. **Switch to Register Tab**
   - Click on "Register" tab
   - Click "Register IDM now" button

2. **Enter Name**
   - Type your preferred name
   - Click OK to confirm

3. **Completion**
   - IDM will be permanently registered
   - Auto-reset will be disabled automatically

## ⚠️ Important Notes

### Security Considerations
- **Always run as administrator** - Required for registry access
- **Antivirus warnings** - Some antivirus may flag the executable due to registry modifications
- **SmartScreen bypass** - Windows may show security warnings (normal for unsigned executables)

### Best Practices
- **Close IDM first** - Always close IDM before running the reset tool
- **Backup registry** - Create a system restore point before first use (recommended)
- **Regular usage** - Reset before trial expires for continuous usage

### Troubleshooting

#### Common Issues:

**Issue**: "Access Denied" error
- **Solution**: Ensure you're running as administrator

**Issue**: IDM still shows expired
- **Solution**: 
  1. Close IDM completely
  2. Run reset tool
  3. Restart IDM
  4. Check trial status

**Issue**: Auto-reset not working
- **Solution**:
  1. Verify Windows startup permissions
  2. Check registry entry exists
  3. Re-enable auto-reset option

**Issue**: Application won't start
- **Solution**:
  1. Check Windows compatibility
  2. Run Windows compatibility troubleshooter
  3. Try running in compatibility mode for Windows 7

## 🛡️ Safety Information

### What the Tool Does
- Modifies specific registry keys related to IDM trial tracking
- Does not modify IDM executable files
- Does not crack or bypass software protection
- Maintains system integrity

### What to Expect
- IDM will show 30 days trial remaining
- All IDM features will work normally
- No system files are modified
- Clean uninstallation (just delete the executable)

## 🔁 Update Process

### Checking for Updates
1. Open the application
2. Go to "Help" tab
3. Click "Check for update"
4. Follow prompts if update is available

### Manual Update
1. Download latest version from releases
2. Replace old executable
3. Your settings will be preserved

## 🧹 Cleanup

### Removing the Tool
Simply delete the executable file - no uninstallation required.

### Complete Cleanup
To remove all traces:
1. Delete the executable
2. Remove registry entries:
   ```
   HKEY_CURRENT_USER\Software\DownloadManager\auto_reset_trial
   HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\IDM trial reset
   ```

## 💡 Tips & Tricks

### Pro Tips:
- **Schedule resets** - Set auto-reset to avoid manual intervention
- **Create desktop shortcut** - For quick access
- **Use batch files** - For automated workflows
- **Monitor trial status** - Check IDM about dialog regularly

### Keyboard Shortcuts:
- **Ctrl + R** - Quick reset (if implemented)
- **Alt + F4** - Close application
- **Tab** - Navigate between interface elements

## 🆘 Getting Help

If you encounter issues:

1. **Check this guide** - Most solutions are documented above
2. **Review GitHub Issues** - Search existing problems and solutions
3. **Create new issue** - Provide detailed information about your problem
4. **Contact developer** - Through GitHub or website contact form

---

*Last updated: February 2026*
*For the latest information, visit [GitHub Repository](https://github.com/helloanarul/idm-reset-kit)*