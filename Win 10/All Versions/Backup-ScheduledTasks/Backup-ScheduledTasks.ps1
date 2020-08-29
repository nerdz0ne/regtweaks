# Set-ExecutionPolicy Unrestricted
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force -Scope CurrentUser


# Starting the script
# .\Backup-ScheduledTasks.ps1
$PATH = "C:\PoSh\Save_ScheduledTasks"
if (!(Test-Path $PATH)) {New-Item -Path $PATH -ItemType Directory}

$sch = New-Object -ComObject("Schedule.Service")
$sch.Connect("localhost")
$tasks = $sch.GetFolder("\").GetTasks(0)

$outfile_temp = "C:\PoSh\Save_ScheduledTasks\{0}.xml";

$tasks | %{
    $xml = $_.Xml
    $task_name = $_.Name
    $outfile = $outfile_temp -f $task_name
    $xml | Out-File $outfile
}
