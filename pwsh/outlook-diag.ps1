# PowerShell Script to Troubleshoot Microsoft 365 Office Outlook

# Function to check Outlook version and configurations
function Check-OutlookVersion {
    Try {
        $outlook = New-Object -ComObject Outlook.Application
        $version = $outlook.Version
        Write-Host "Outlook Version: $version"
    } Catch {
        Write-Host "Error: Unable to access Outlook. Is it installed?"
    }
}

# Function to test connectivity to Microsoft 365 servers
function Test-Connectivity {
    $testUrls = @("https://outlook.office365.com", "https://portal.office.com")
    foreach ($url in $testUrls) {
        $response = Test-Connection -ComputerName $url -Count 2 -Quiet
        if ($response -eq $true) {
            Write-Host "Connection to ${url}: Successful"
        } else {
            Write-Host "Connection to ${url}: Failed"
        }
    }
}

# Function to inspect mailbox and profile settings
function Inspect-MailboxProfile {
    # This requires Outlook to be running
    Try {
        $outlook = New-Object -ComObject Outlook.Application
        $namespace = $outlook.GetNameSpace("MAPI")
        $profileName = $namespace.CurrentProfileName
        Write-Host "Current Profile Name: $profileName"
    } Catch {
        Write-Host "Error: Unable to access mailbox or profile."
    }
}

# Function to analyze error logs
function Analyze-ErrorLogs {
    # Replace with actual path to Outlook error logs if different
    $logPath = "C:\Path\To\Outlook\Logs"
    if (Test-Path $logPath) {
        $logs = Get-ChildItem $logPath -Filter "*.log"
        foreach ($log in $logs) {
            # Simple error log analysis logic; can be expanded
            $errors = Select-String -Path $log.FullName -Pattern "ERROR"
            foreach ($error in $errors) {
                Write-Host "Error found in $($log.Name): $error"
            }
        }
    } else {
        Write-Host "Error logs not found at $logPath"
    }
}

# Function to repair/reset Outlook
function Repair-Outlook {
    Write-Host "Starting Outlook Repair..."
    # Add actual repair/reset commands or scripts here
}

# Script Execution
Check-OutlookVersion
Test-Connectivity
Inspect-MailboxProfile
# Analyze-ErrorLogs
# Uncomment
