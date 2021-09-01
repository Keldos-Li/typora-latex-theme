# this file will be copied into target directory

Add-Type -AssemblyName PresentationFramework

$dir="$env:APPDATA\Typora\themes"

Write-Output "正在寻找 Typora 主题文件夹 $dir"
If (Test-Path -Path $dir -PathType Container) {
    Write-Output "已找到该文件夹"
} Else {
    $MessageBody = "未找到 Typora 主题文件夹，请先安装 Typora"
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageIcon = [System.Windows.MessageBoxImage]::Error
    $MessageTitle = "安装失败"
    Write-Error $MessageBody
    [System.Windows.MessageBox]::Show($MessageBody, $MessageTitle, $ButtonType, $MessageIcon)
    Throw $MessageBody
}

Try {
    Copy-Item -Path ".\target\*.css" -Destination $dir -Recurse -Force -ErrorAction Stop
} Catch {
    $MessageBody = $_.Exception.Message
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageIcon = [System.Windows.MessageBoxImage]::Error
    $MessageTitle = "安装失败"
    Write-Error $MessageTitle
    [System.Windows.MessageBox]::Show($MessageBody, $MessageTitle, $ButtonType, $MessageIcon)
    Throw $MessageBody
}

$MessageBody = "主题文件已安装成功"
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageIcon = [System.Windows.MessageBoxImage]::Information
$MessageTitle = "安装成功"
Write-Output $MessageTitle
[System.Windows.MessageBox]::Show($MessageBody, $MessageTitle, $ButtonType, $MessageIcon)
