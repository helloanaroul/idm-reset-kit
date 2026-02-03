# Build Instructions

This guide explains how to build IDM Trial Reset from source code.

## 🛠️ Prerequisites

### Required Software

1. **AutoIt v3**
   - Download from: https://www.autoitscript.com/site/autoit/downloads/
   - Install the full version (includes SciTE editor)

2. **Windows Development Environment**
   - Windows 7 or later
   - Administrator privileges for testing

3. **Optional Tools**
   - Git (for version control)
   - Resource Hacker (for icon editing)
   - UPX (for executable compression)

## 📁 Project Structure

```
idm-reset-kit/
├── src/
│   ├── IDM Trial Reset.au3    # Main application
│   ├── core.au3              # Core functions
│   ├── IDM.ico               # Application icon
│   ├── SetACLx32.exe         # 32-bit permissions tool
│   ├── SetACLx64.exe         # 64-bit permissions tool
│   ├── idm_reset.reg         # Registry reset template
│   ├── idm_trial.reg         # Trial reset template
│   └── idm_reg.reg           # Registration template
├── docs/
│   └── (documentation files)
└── README.md
```

## 🚀 Building Process

### Method 1: Using SciTE (Recommended)

1. **Open the Project**
   - Launch SciTE4AutoIt3
   - Open `src/IDM Trial Reset.au3`

2. **Configure Build Settings**
   - Go to Tools → Compile
   - Or press `Ctrl+F7`

3. **Build Executable**
   - The compiler will create `IDM_Trial_Reset.exe`
   - Output location: same directory as source

### Method 2: Command Line

```cmd
"C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe" ^
/in="src\IDM Trial Reset.au3" ^
/out="IDM_Trial_Reset.exe" ^
/icon="src\IDM.ico" ^
/comp=4 ^
/upx
```

### Method 3: Using AutoIt Compiler GUI

1. Open AutoIt Compiler
2. Set input file: `src\IDM Trial Reset.au3`
3. Set output file: `IDM_Trial_Reset.exe`
4. Select icon: `src\IDM.ico`
5. Set compression level: 4
6. Enable UPX compression
7. Click "Convert"

## ⚙️ Build Configuration

### Compiler Directives

The main file contains these directives:

```autoit
#AutoIt3Wrapper_Icon=IDM.ico
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseUpx=Y
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_Language=1033
```

### Customization Options

**Version Information:**
```autoit
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_ProductVersion=1.0.0.0
#AutoIt3Wrapper_Res_Field=ProductName|IDM Trial Reset
#AutoIt3Wrapper_Res_Field=CompanyName|Anarul Sarder
#AutoIt3Wrapper_Res_Field=LegalCopyright|Copyright (c) 2026
```

**Compression Settings:**
- Level 1-4 (4 = maximum compression)
- UPX reduces file size by ~50%

## 🔧 Development Workflow

### 1. Setup Development Environment

```bash
# Clone repository
git clone https://github.com/helloanarul/idm-reset-kit.git
cd idm-reset-kit

# Create development branch
git checkout -b feature/new-feature
```

### 2. Code Development

1. **Edit Source Files**
   - Use SciTE4AutoIt3 for syntax highlighting
   - Test functions incrementally
   - Use AutoIt's built-in debugger

2. **Testing Changes**
   - Compile frequently during development
   - Test on target Windows versions
   - Verify registry operations work correctly

### 3. Build and Test

```bash
# Build executable
aut2exe /in "src\IDM Trial Reset.au3" /out "build\IDM_Trial_Reset.exe"

# Test functionality
# Run as administrator and verify all features
```

## 📦 Release Preparation

### Pre-release Checklist

- [ ] All features working correctly
- [ ] No debug code or messages
- [ ] Updated version numbers
- [ ] Comprehensive testing completed
- [ ] Documentation updated
- [ ] License information current
- [ ] README.md accurate

### Version Numbering

Follow semantic versioning: `MAJOR.MINOR.PATCH`

- **MAJOR**: Breaking changes
- **MINOR**: New features
- **PATCH**: Bug fixes

### Creating Release

1. **Update Version Info**
   ```autoit
   Global Const $version = 22  ; In core.au3
   ```

2. **Build Final Executable**
   ```cmd
   Aut2exe.exe /in "src\IDM Trial Reset.au3" /out "IDM_Trial_Reset_v1.2.0.exe"
   ```

3. **Create Release Notes**
   - List new features
   - Document bug fixes
   - Note breaking changes
   - Include usage instructions

4. **Upload to GitHub**
   - Create new release
   - Attach executable
   - Add release notes
   - Tag with version number

## 🔍 Debugging

### Common Build Issues

**Issue**: "Cannot open include file"
- **Solution**: Check file paths and include directories

**Issue**: "Invalid icon format"
- **Solution**: Ensure .ico file is valid and accessible

**Issue**: "Permission denied"
- **Solution**: Run compiler as administrator

**Issue**: "Registry access failed"
- **Solution**: Test with elevated privileges

### Debugging Tools

1. **AutoIt Debugger**
   - Built into SciTE
   - Set breakpoints
   - Step through code
   - Inspect variables

2. **Message Box Debugging**
   ```autoit
   MsgBox(0, "Debug", "Variable value: " & $variable)
   ```

3. **Console Output**
   ```autoit
   ConsoleWrite("Debug info: " & $info & @CRLF)
   ```

## 🛡️ Security Considerations

### Code Review Checklist

- [ ] No hardcoded sensitive information
- [ ] Proper error handling
- [ ] Input validation implemented
- [ ] Registry access properly secured
- [ ] No unnecessary file system access
- [ ] Administrator rights properly requested

### Best Practices

1. **Minimize Privileges**
   - Only request admin when necessary
   - Drop privileges when possible

2. **Secure Registry Access**
   - Validate registry paths
   - Handle access denied errors gracefully
   - Clean up temporary registry entries

3. **File Handling**
   - Validate file paths
   - Check file permissions
   - Handle file operation errors

## 📊 Performance Optimization

### Optimization Techniques

1. **Code Optimization**
   - Minimize registry calls
   - Cache frequently accessed data
   - Use efficient string operations

2. **Resource Management**
   - Clean up temporary files
   - Close handles properly
   - Free memory when possible

3. **Build Optimization**
   - Use appropriate compression
   - Remove debug information
   - Optimize icon sizes

## 🔄 Continuous Integration

### Automated Build Setup

Create a batch file for automated builds:

```batch
@echo off
set AUTOIT_PATH="C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe"
set SOURCE=src\IDM Trial Reset.au3
set OUTPUT=build\IDM_Trial_Reset.exe

echo Building IDM Trial Reset...
%AUTOIT_PATH% /in "%SOURCE%" /out "%OUTPUT%" /icon "src\IDM.ico" /comp 4 /upx

if %ERRORLEVEL% EQU 0 (
    echo Build successful!
    echo Output: %OUTPUT%
) else (
    echo Build failed with error code %ERRORLEVEL%
)
```

## 📚 Additional Resources

### Learning AutoIt

- **Official Documentation**: https://www.autoitscript.com/autoit3/docs/
- **Community Forum**: https://www.autoitscript.com/forum/
- **Example Scripts**: AutoIt installation includes examples

### Tools and Utilities

- **SciTE4AutoIt3**: Enhanced editor with debugging
- **Au3Check**: Syntax checker
- **AutoIt Macro Generator**: GUI automation tool

## 🆘 Troubleshooting

### Common Development Issues

**Problem**: Functions not recognized
- **Check**: Include file paths and syntax

**Problem**: GUI elements not displaying
- **Check**: GUI creation code and coordinates

**Problem**: Registry operations failing
- **Check**: Administrator privileges and registry paths

**Problem**: File installation failing
- **Check**: File paths and write permissions

---

*For questions about building or development, please open an issue on GitHub*