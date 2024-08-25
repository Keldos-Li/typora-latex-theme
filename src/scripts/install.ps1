# this file will be copied into target directory

Add-Type -AssemblyName PresentationFramework

function Convert-BytesToString {
    param (
        [byte[]]$ByteArray
    )

    $currentEncoding = [Console]::OutputEncoding

    if ($currentEncoding.WebName -eq "utf-8") {
        $outputStr = [System.Text.Encoding]::UTF8.GetString($ByteArray)
    } else {
        $outputStr = [System.Text.Encoding]::GetEncoding("GB2312").GetString(
            [System.Text.Encoding]::Convert([System.Text.Encoding]::UTF8, $currentEncoding, $ByteArray)
        )
    }

    return $outputStr
}

$dir="$env:APPDATA\Typora\themes"

Write-Output (
    Convert-BytesToString -ByteArray `
    @(0xe6, 0xad, 0xa3, 0xe5, 0x9c, 0xa8, 0xe5, 0xaf, 0xbb, 0xe6, 0x89, 0xbe, 0x20, 0x54, 0x79, 0x70, 0x6f, 0x72, 0x61, 0x20, 0xe4, 0xb8, 0xbb, 0xe9, 0xa2, 0x98, 0xe6, 0x96, 0x87, 0xe4, 0xbb, 0xb6, 0xe5, 0xa4, 0xb9)
) # zheng zai xun zhao Typora zhu ti wen jian jia
Write-Output $dir
If (Test-Path -Path $dir -PathType Container) {
    Write-Output (
        Convert-BytesToString -ByteArray `
        @(0xe5, 0xb7, 0xb2, 0xe6, 0x89, 0xbe, 0xe5, 0x88, 0xb0, 0xe8, 0xaf, 0xa5, 0xe6, 0x96, 0x87, 0xe4, 0xbb, 0xb6, 0xe5, 0xa4, 0xb9)
    ) # yi zhao dao gai wen jian jia
} Else {
    $MessageBody = (
        Convert-BytesToString -ByteArray `
        @(0xe6, 0x9c, 0xaa, 0xe6, 0x89, 0xbe, 0xe5, 0x88, 0xb0, 0x20, 0x54, 0x79, 0x70, 0x6f, 0x72, 0x61, 0x20, 0xe4, 0xb8, 0xbb, 0xe9, 0xa2, 0x98, 0xe6, 0x96, 0x87, 0xe4, 0xbb, 0xb6, 0xe5, 0xa4, 0xb9, 0xef, 0xbc, 0x8c, 0xe8, 0xaf, 0xb7, 0xe5, 0x85, 0x88, 0xe5, 0xae, 0x89, 0xe8, 0xa3, 0x85, 0x20, 0x54, 0x79, 0x70, 0x6f, 0x72, 0x61)
    ) # wei zhao dao Typora zhu ti wen jian jia, qing xian an zhuang Typora
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageIcon = [System.Windows.MessageBoxImage]::Error
    $MessageTitle = (
        Convert-BytesToString -ByteArray `
        @(0xe5, 0xae, 0x89, 0xe8, 0xa3, 0x85, 0xe5, 0xa4, 0xb1, 0xe8, 0xb4, 0xa5)
    ) # an zhuang shi bai
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
    $MessageTitle = (
        Convert-BytesToString -ByteArray `
        @(0xe5, 0xae, 0x89, 0xe8, 0xa3, 0x85, 0xe5, 0xa4, 0xb1, 0xe8, 0xb4, 0xa5)
    ) # an zhuang shi bai  
    Write-Error $MessageTitle
    [System.Windows.MessageBox]::Show($MessageBody, $MessageTitle, $ButtonType, $MessageIcon)
    Throw $MessageBody
}

$MessageBody = (
    Convert-BytesToString -ByteArray `
    @(0xe4, 0xb8, 0xbb, 0xe9, 0xa2, 0x98, 0xe6, 0x96, 0x87, 0xe4, 0xbb, 0xb6, 0xe5, 0xb7, 0xb2, 0xe5, 0xae, 0x89, 0xe8, 0xa3, 0x85, 0xe6, 0x88, 0x90, 0xe5, 0x8a, 0x9f)
) # zhu ti wen jian yi an zhuang cheng gong  
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageIcon = [System.Windows.MessageBoxImage]::Information
$MessageTitle = (
    Convert-BytesToString -ByteArray `
    @(0xe5, 0xae, 0x89, 0xe8, 0xa3, 0x85, 0xe6, 0x88, 0x90, 0xe5, 0x8a, 0x9f)
) # an zhuang cheng gong   
Write-Output $MessageTitle
[System.Windows.MessageBox]::Show($MessageBody, $MessageTitle, $ButtonType, $MessageIcon)
