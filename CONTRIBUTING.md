# Contributing to IDM Trial Reset

Thank you for your interest in contributing to IDM Trial Reset! This document provides guidelines and instructions for contributing to the project.

## 🤝 How to Contribute

### Reporting Issues

**Before creating an issue:**
- Check existing issues to avoid duplicates
- Ensure you're using the latest version
- Verify the issue isn't already documented

**When reporting issues, include:**
- Operating system version
- IDM version
- Steps to reproduce the problem
- Expected vs actual behavior
- Screenshots if applicable
- Error messages or logs

### Feature Requests

We welcome feature suggestions! When proposing new features:
- Explain the use case clearly
- Describe how it would benefit users
- Consider implementation complexity
- Check if similar functionality already exists

### Code Contributions

#### Getting Started

1. **Fork the repository**
   ```bash
   git clone https://github.com/helloanarul/idm-reset-kit.git
   cd idm-reset-kit
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes**
   - Follow the existing code style
   - Add comments for complex logic
   - Test thoroughly before submitting

4. **Commit your changes**
   ```bash
   git commit -m "Add: brief description of changes"
   ```

5. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

6. **Create Pull Request**
   - Provide detailed description
   - Reference related issues
   - Explain the changes made

## 📝 Code Style Guidelines

### AutoIt Coding Standards

**Naming Conventions:**
- Variables: `camelCase` (e.g., `$userName`)
- Functions: `PascalCase` (e.g., `ResetTrial()`)
- Constants: `UPPER_SNAKE_CASE` (e.g., `CONST_MAX_TRIES`)

**Code Structure:**
```autoit
; Good example
Func ResetTrial()
    Local $result = 0
    
    ; Validate input
    If Not IsAdmin() Then
        Return SetError(1, 0, 0)
    EndIf
    
    ; Main logic
    $result = PerformReset()
    
    ; Return result
    Return $result
EndFunc
```

**Documentation:**
- Comment complex functions
- Explain parameter purposes
- Document return values
- Use consistent formatting

### File Organization

```
src/
├── IDM Trial Reset.au3    ; Main application file
├── core.au3              ; Core functionality
├── IDM.ico              ; Application icon
└── *.reg                ; Registry files
```

## 🔧 Development Setup

### Prerequisites

- **AutoIt v3** - Download from official website
- **SciTE4AutoIt3** - Recommended IDE
- **Windows OS** - For testing
- **IDM** - For functional testing

### Building Process

1. **Install AutoIt**
   - Download from autoitscript.com
   - Install with full development environment

2. **Open Project**
   - Open `IDM Trial Reset.au3` in SciTE
   - Ensure all include files are accessible

3. **Compile Executable**
   - Use AutoIt compiler (Ctrl+F7)
   - Output: `IDM_Trial_Reset.exe`

4. **Testing**
   - Run as administrator
   - Test all functionality
   - Verify on different Windows versions

## 🧪 Testing Guidelines

### Test Scenarios

**Basic Functionality:**
- [ ] Trial reset works correctly
- [ ] Registration functionality
- [ ] Auto-reset scheduling
- [ ] GUI responsiveness

**Edge Cases:**
- [ ] IDM not installed
- [ ] No administrator rights
- [ ] Multiple concurrent instances
- [ ] Registry access denied

**Compatibility:**
- [ ] Windows 7/8/10/11
- [ ] 32-bit and 64-bit systems
- [ ] Different IDM versions

### Testing Process

1. **Unit Testing**
   - Test individual functions
   - Verify error handling
   - Check return values

2. **Integration Testing**
   - Test complete workflows
   - Verify registry changes
   - Check IDM behavior

3. **User Testing**
   - Clean installation test
   - Upgrade scenarios
   - Uninstall verification

## 📚 Documentation Updates

When contributing, please update relevant documentation:

- **README.md** - For user-facing changes
- **INSTALLATION.md** - For installation changes
- **Code comments** - For technical changes
- **Wiki** - For comprehensive guides

## 🚨 Important Notes

### What NOT to Contribute

- **Cracking methods** - This project doesn't crack software
- **Malicious code** - No harmful functionality
- **Privacy violations** - No data collection without consent
- **Licensing violations** - Respect all licenses

### Legal Considerations

- Ensure your contributions don't violate any licenses
- Don't include copyrighted material without permission
- Respect intellectual property rights
- Follow open source best practices

## 🎯 Project Goals

### What We're Looking For

- **Bug fixes** - Resolving existing issues
- **Performance improvements** - Making the tool faster
- **User experience** - Better interface and workflow
- **Compatibility** - Supporting more systems
- **Documentation** - Clearer instructions and guides
- **Security** - Safer implementation practices

### What We're NOT Looking For

- Features that compromise user privacy
- Methods that could be considered cracking
- Complex dependencies
- Platform-specific limitations

## 🏆 Recognition

Contributors will be recognized in:
- **README.md** - Contributor list
- **Release notes** - For significant contributions
- **GitHub** - Through activity tracking

## 📞 Communication

### Channels

- **GitHub Issues** - For bug reports and feature requests
- **Pull Requests** - For code contributions
- **Email** - For private inquiries (check profile)

### Response Time

We aim to respond to:
- Issues: Within 48 hours
- Pull Requests: Within 72 hours
- Questions: Within 24 hours

## 📜 License Agreement

By contributing to this project, you agree that:
- Your contributions will be licensed under MIT License
- You have the right to submit the contribution
- Your contribution is original work
- You understand the project's purpose and guidelines

## 🔄 Pull Request Process

1. **Create descriptive PR title**
2. **Fill out PR template completely**
3. **Link related issues**
4. **Request review from maintainers**
5. **Address feedback promptly**
6. **Merge when approved**

## 🎉 Thank You!

Your contributions make this project better for everyone. Whether it's fixing a typo, reporting a bug, or adding a new feature - every contribution matters!

---

*Last updated: February 2026*
*Questions? Contact the project maintainer*