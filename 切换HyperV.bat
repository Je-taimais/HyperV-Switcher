@echo off
chcp 65001 >nul
fltmc filters >nul 2>&1 || (
    echo 错误：请右键点击此文件，选择【以管理员身份运行】
    pause
    exit /b 1
)

:MENU
cls
echo ==============================================
echo               Hyper-V 切换工具
echo ==============================================
echo 1. 开启 Hyper-V 全套（重启生效）
echo 2. 关闭 Hyper-V 全套（重启生效）
echo 0. 退出程序
echo ==============================================
set /p opt=请输入操作序号：

if "%opt%"=="1" goto ENABLE_HV
if "%opt%"=="2" goto DISABLE_HV
if "%opt%"=="0" exit
echo 输入错误，请重新选择
timeout /t 1 /nobreak >nul
goto MENU

:: 开启Hyper-V
:ENABLE_HV
echo.
echo 正在设置内核Hypervisor启动项为自动...
bcdedit /set hypervisorlaunchtype auto

echo 正在启用：虚拟机平台、Windows虚拟机监控程序平台
:: /online 当前系统 /enable-feature 启用 /all 包含依赖 /norestart 不自动重启
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism /online /enable-feature /featurename:HypervisorPlatform /all /norestart

echo.
echo ==============================================
echo 操作完成！请重启电脑，Hyper-V 将完整启用
echo ==============================================
pause
goto MENU

:: 关闭Hyper-V
:DISABLE_HV
echo.
echo 正在设置内核Hypervisor启动项为关闭...
bcdedit /set hypervisorlaunchtype off

echo 正在禁用：虚拟机平台、Windows虚拟机监控程序平台
:: 仅关闭功能，不删除本地安装包，不加 /remove 参数
dism /online /disable-feature /featurename:VirtualMachinePlatform /norestart
dism /online /disable-feature /featurename:HypervisorPlatform /norestart

echo.
echo ==============================================
echo 操作完成！请重启电脑，Hyper-V 将彻底关闭
echo ==============================================
pause
goto MENU