Add-Type -AssemblyName PresentationFramework

# Files / Paths
$spool_dir      = "C:\cmd\ahk\res"
$print_path     = "$spool_dir\printlist.txt"
$print_log_path = "$spool_dir\printlist_log.txt"
$print_bkp_path = "$spool_dir\printlist_backup.txt"

# Loop through each line, sending to printer or catching
ForEach($print_line in Get-Content $print_path) {
    Try {
        # Opens and Prints the File
        Start-Process -FilePath $print_line -Verb Print -PassThru | %{sleep 10;$_} | kill
    }
    # Error Catching
    Catch {
        [System.Windows.MessageBox]::Show("An error with the path `"$print_line`" has been logged in the log file.","Spooler Error","OK","Error")
        $err_date = Get-Date
        $err_str  = "Error occurred when spooling at $err_date for the file: $print_line`r`n"
        Add-Content -Path $print_log_path -Value $err_str
    }
}
# Backup the file
Copy-Item $print_path -Destination $print_bkp_path
Clear-Content -Path $print_path
