$PROJECT_NAME="KernelDriver"
$ARCHITECTURE="x64"
$DRIVER_DIRECOTY="$PSScriptRoot\\$PROJECT_NAME\\$ARCHITECTURE\\Debug"

$VMWARE_VMRUN="C:\\Program Files (x86)\\VMware\\VMware Workstation\\vmrun.exe"

$TEST_MACHINE_PATH="C:\\Users\\Rhydon\\Documents\\Virtual Machines\\Windows 10 x64 kernel\\Windows 10 x64 kernel.vmx"
$TEST_MACHINE_SNAPSHOT="Ready"


Write-Host "[+] Revert test machine snapshot"
"`"$VMWARE_VMRUN`" -T ws revertToSnapshot `"$TEST_MACHINE_PATH`" $TEST_MACHINE_SNAPSHOT" | cmd

$running_machines = "`"$VMWARE_VMRUN`" list" | cmd

if (-not [bool]($running_machines -Match $TEST_MACHINE_PATH)) {
    Write-Host "[+] Start test machine"
    "`"$VMWARE_VMRUN`" -T ws start `"$TEST_MACHINE_PATH`"" | cmd
}
