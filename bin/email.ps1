#!/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -File

function Send-Outlook-Email {
    param (
        $Subject,
        $Body
    )
    # Outlook ComObject
    $outlook = New-Object -ComObject Outlook.Application
    $outlookMail = $outlook.CreateItem(0)
    # Mail Content
    $outlookMail.To = "EMAIL@EMAIL.EMAIL" 
    $outlookMail.Subject = "$Subject" 
    $outlookMail.Body = "$Body"
    $outlookMail.SentOnBehalfOf = "Test"
    $outlookMail.Send()
    Write-Host "Email Sent"
    Start-Sleep 2
    ## Don't Quit Outlook, I might be using it...
}

Send-Outlook-Email -Subject $args[0] -Body $args[1]
