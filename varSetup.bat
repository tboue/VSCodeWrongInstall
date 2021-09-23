SET "graalvm=21.2.0"
SET "java=8"
SET "arch=amd64"
SET "graalVMName=graalvm-ce-java%java%-%graalvm%"
SET "graalVMFullName=graalvm-ce-java%java%-windows-%arch%-%graalvm%"
SET "graalURL=https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-%graalvm%/%graalVMFullName%.zip"
SET "graalInstallDir=C:\Programmes\Java\"

REM PATH

setx /M PATH "%graalInstallDir%%graalVMName%\bin\;%PATH%"

REM JAVA_HOME 

setx /M JAVA_HOME "%graalInstallDir%%graalVMName%"

call RefreshEnv.cmd