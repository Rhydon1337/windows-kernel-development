# windows-kernel-development
Setup for windows kernel development (development, debugging automation and compiling)

We will use Visual Studio as an IDE and WinDbg as a debugger and VMware Workstation for the test machine. This part highly relies on the [previous part](https://github.com/Rhydon1337/windows-kernel-debugging) which describes how to set up kernel debugging environment.

## Environment Setup

1. Install OpenSSH server on your guest machine: Apps & Feature (In windows windows start) -> Optional features -> OpenSSH Server
2. Install PuTTY package on the host machine from [here](https://www.putty.org/)

## Configure Debug Script

Open debug.ps1:

1. **PROJECT_NAME** -> the project name (matching with the driver name)
2. ARCHITECTURE -> the architecture to use
3. BUILD_DIRECOTY -> make sure that you want to debug your debug version
4. SOURCE_DIRECOTY -> your source directory (C\C++ files)
5. **VMWARE_VMRUN** -> the path to vmrun.exe application from VMware
6. **WINDBG** -> the path to windbg
7. **TEST_MACHINE_PATH** -> the path to your test machine vmx
8. **TEST_MACHINE_SNAPSHOT** -> the debugging snapshot name
9. **TEST_MACHINE_USERNAME** -> the username to your test machine account (for ssh)
10. **TEST_MACHINE_PASSWORD** -> the password to your test machine account (for ssh)
11. **TEST_MACHINE_IP** -> the ip to your test machine (for ssh)
12. REMOTE_DIR_PRODUCT -> the remote directory to upload the driver
13. REMOTE_DRIVER_PATH -> the driver remote path
14. CREATE_SERVICE -> create a kernel service for the driver
15. START_SERVICE -> start the kernel service
16. **DEBUG_PORT** -> the debug port that you choose for your debugging session
17. **DEBUG_KEY** -> the debug key that you choose for your debugging session

**The bolded points are needed to be configured and check that the paths are correct (vmrun and windbg).**

Now, when you run the powershell script (debug.ps1) it will open a debugging session to your driver.

DONE!!!