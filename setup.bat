call varSetup.bat

choco install chocolatey --version=0.10.15 --force --allow-downgrade
call RefreshEnv.cmd

choco install visualstudio2017community --version 15.9.17.0 --no-progress --package-parameters "--add Microsoft.VisualStudio.Component.VC.Tools.ARM64 --add Microsoft.VisualStudio.Component.VC.CMake.Project" --yes


if not exist %graalInstallDir%NUL mkdir %graalInstallDir%
if not exist %graalVMFullName%.zip curl -# -L -O %graalURL%
if not exist  %graalInstallDir%%graalVMName% powershell Expand-Archive %graalVMFullName%.zip -DestinationPath %graalInstallDir%

gu.cmd install native-image