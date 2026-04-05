# ==========================================================
# 实验项目: Road-to-CyberSecurity-Master (Test01)
# 脚本功能: 实验环境恢复脚本 (System Restore)
# 作用: 撤销注册表篡改，恢复 Windows Defender 防护
# ==========================================================

Write-Host "[*] 正在恢复系统安全策略..." -ForegroundColor Yellow

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender"

# 1. 恢复反间谍软件模块 (设为 0 或删除键值)
if (Test-Path $registryPath) {
    Set-ItemProperty -Path $registryPath -Name "DisableAntiSpyware" -Value 0
    # 或者直接删除: Remove-ItemProperty -Path $registryPath -Name "DisableAntiSpyware"
}

# 2. 恢复实时监控
$realTimePath = "$registryPath\Real-Time Protection"
if (Test-Path $realTimePath) {
    Set-ItemProperty -Path $realTimePath -Name "DisableRealtimeMonitoring" -Value 0
}

Write-Host "[+] 安全策略已重置。建议重新启动系统以使 Defender 完全生效。" -ForegroundColor Green