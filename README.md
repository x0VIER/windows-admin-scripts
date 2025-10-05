# 🚀 Windows Admin Scripts

<div align="center">

![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows-0078D4.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Maintenance](https://img.shields.io/badge/maintained-yes-brightgreen.svg)

**Professional Windows administration scripts for IT support and system management**

</div>

---

## 📋 Overview

A curated collection of production-ready PowerShell scripts designed for Windows system administrators and IT support professionals. These tools streamline user management, system monitoring, and routine administrative tasks in enterprise environments.

## 🛠️ Scripts Included

### 👥 create-users.ps1
**Bulk User Account Creation**

Automate the creation of multiple Windows user accounts from CSV files for efficient onboarding workflows.

**Features:**
- CSV-based batch processing
- Standardized account configuration
- Group membership assignment
- Error handling and logging

**Usage:**
```powershell
.\create-users.ps1
```

**CSV Format:**
```csv
Username,FullName,Password,Groups
jdoe,John Doe,SecurePass123,Users;RemoteDesktop
jsmith,Jane Smith,SecurePass456,Users;Administrators
```

---

### 📊 system-health-check.ps1
**System Health Monitoring**

Comprehensive system health check for troubleshooting and preventive maintenance.

**Monitors:**
- CPU utilization and load
- Memory usage and availability
- Disk space and I/O performance
- System uptime and stability
- Running services status

**Usage:**
```powershell
.\system-health-check.ps1
```

**Output:**
- Console display with color-coded status
- Optional export to log file
- Alert thresholds for critical metrics

---

## 🚀 Quick Start

### Prerequisites
- Windows 10/11 or Windows Server 2016+
- PowerShell 5.1 or higher
- Administrator privileges

### Installation

```powershell
# Clone the repository
git clone https://github.com/x0VIER/windows-admin-scripts.git

# Navigate to directory
cd windows-admin-scripts

# Set execution policy (if needed)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Running Scripts

```powershell
# Method 1: Direct execution
.\scriptname.ps1

# Method 2: Bypass execution policy
powershell.exe -ExecutionPolicy Bypass -File .\scriptname.ps1
```

## 💡 Usage Examples

### Bulk User Creation
```powershell
# Prepare CSV file with user data
# users.csv:
# Username,FullName,Password,Groups
# user1,User One,Pass123,Users
# user2,User Two,Pass456,Users

# Run the script
.\create-users.ps1
```

### System Health Check
```powershell
# Run health check
.\system-health-check.ps1

# Schedule daily health checks
$Action = New-ScheduledTaskAction -Execute "PowerShell.exe" `
    -Argument "-File C:\Scripts\system-health-check.ps1"
$Trigger = New-ScheduledTaskTrigger -Daily -At 9am
Register-ScheduledTask -TaskName "Daily Health Check" -Action $Action -Trigger $Trigger
```

## 📋 Requirements

| Component | Version | Notes |
|-----------|---------|-------|
| Windows OS | 10/11 or Server 2016+ | Required |
| PowerShell | 5.1+ | Pre-installed |
| Admin Rights | Yes | For most operations |

## 🔒 Security Best Practices

- **Passwords**: Use strong passwords or integrate with password management systems
- **Permissions**: Run with minimum required privileges
- **Audit**: Enable logging for all administrative actions
- **Testing**: Always test scripts in non-production environments first

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a feature branch
3. Add your script with documentation
4. Test thoroughly
5. Submit a pull request

### Contribution Guidelines
- Follow PowerShell best practices
- Include help documentation
- Add error handling
- Provide usage examples

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- Built for Windows administrators by Windows administrators
- Inspired by real-world IT operations needs
- Community-driven and production-tested

## 📧 Support

- **Issues**: Report bugs via GitHub Issues
- **Questions**: Use GitHub Discussions
- **Contributions**: Submit Pull Requests

---

<div align="center">

**Simplifying Windows administration, one script at a time**

⭐ Star this repo if it makes your job easier!

</div>
