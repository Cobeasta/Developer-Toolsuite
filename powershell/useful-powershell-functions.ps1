Function Get-FolderPath{
[CmdletBinding()]
Param(
    [String]$Description,
    [String]$InitialDirectory = "C:\",
    [Switch]$NewFolderButton = $false)

    [void][System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms")
    $FolderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $FolderBrowserDialog.SelectedPath = $InitialDirectory
    $FolderBrowserDialog.Description = $Description
    $FolderBrowserDialog.ShowNewFolderButton = $NewFolderButton
    If($FolderBrowserDialog.ShowDialog() -eq "OK"){
        $FolderBrowserDialog.SelectedPath
    }
}