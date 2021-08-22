# this file will be copied into target directory

$dir="$env:APPDATA\Typora\themes"
$os="Windows"

Write-Output "正在寻找 Typora 主题文件夹 $dir"
If (Test-Path -Path $dir -PathType Container) {
    Write-Output "已找到该文件夹"
} Else {
    Throw "未找到该文件夹，请先安装 Typora"
}

Try {
    Copy-Item -Path "$os\*" -Destination $dir -Recurse -Force -ErrorAction Stop
} Catch {
    Write-Error "安装失败"
    Throw $_.Exception.Message
}

Write-Output "安装成功"
