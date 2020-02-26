#PowerShell Exercises 1

#Folder and file manipulation

New-Item -Path 'C:\Users\James\Desktop\TestFolder' -ItemType Directory
New-Item -Path 'C:\Users\James\Desktop\TestFolder\Test File.txt' -ItemType File
Copy-Item 'C:\Users\James\Desktop\TestFolder' -Destination 'C:\Users\James\Desktop\TestFolder\TestFolderCopy'
Remove-Item 'C:\Users\James\Desktop\TestFolder\TestFolderCopy'
Rename-Item -Path 'C:\Users\James\Desktop\TestFolder\Test File.txt' -NewName 'TestFileRenamed.txt'
Get-Content 'C:\Users\James\Desktop\TestFolder\TestFileRenamed.txt'
(Get-Content C:\Users\James\Desktop\TestFolder\TestFileRenamed.txt).Length
Test-Path 'C:\Users\James\Desktop\TestFolder'
Remove-item 'C:\Users\James\Desktop\TestFolder'

# Time Exercies

Get-Date
Set-Date -Date (Get-Date).AddDays(-1);
Get-Date -DisplayHint Date
Get-Date -DisplayHint Time