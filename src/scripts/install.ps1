# this file will be copied into target directory

Add-Type -AssemblyName PresentationFramework

$dir="$env:APPDATA\Typora\themes"

Write-Output "����Ѱ�� Typora �����ļ��� $dir"
If (Test-Path -Path $dir -PathType Container) {
    Write-Output "���ҵ����ļ���"
} Else {
    $MessageBody = "δ�ҵ� Typora �����ļ��У����Ȱ�װ Typora"
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageIcon = [System.Windows.MessageBoxImage]::Error
    $MessageTitle = "��װʧ��"
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
    $MessageTitle = "��װʧ��"
    Write-Error $MessageTitle
    [System.Windows.MessageBox]::Show($MessageBody, $MessageTitle, $ButtonType, $MessageIcon)
    Throw $MessageBody
}

$MessageBody = "�����ļ��Ѱ�װ�ɹ�"
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageIcon = [System.Windows.MessageBoxImage]::Information
$MessageTitle = "��װ�ɹ�"
Write-Output $MessageTitle
[System.Windows.MessageBox]::Show($MessageBody, $MessageTitle, $ButtonType, $MessageIcon)
