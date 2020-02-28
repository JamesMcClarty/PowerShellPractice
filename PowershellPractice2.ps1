# Creating, Setting, Appending, and Reading Content for Text files 

New-Item C:\Users\James\Desktop\NewFile.txt -ItemType File
Set-Content C:\Users\James\Desktop\NewFile.txt 'This is a new file'
Add-Content C:\Users\James\Desktop\NewFile.txt 'Here is some new stuff!'
Get-Content C:\Users\James\Desktop\NewFile.txt
Clear-Content C:\Users\James\Desktop\NewFile.txt
Remove-Item C:\Users\James\Desktop\NewFile.txt

# Creating, Setting, and Reading Content for XML files 

New-Item C:\Users\James\Desktop\NewXML.xml -ItemType File
Set-Content C:\Users\James\Desktop\NewXML.xml "<block><body>This is a new XML file.</body> <footer>It's good to practice with.</footer></block>"
Get-Content C:\Users\James\Desktop\NewXML.xml
Remove-Item C:\Users\James\Desktop\NewXML.xml

# Creating, Setting, and Reading Content for HTML files 

New-Item C:\Users\James\Desktop\index.html -ItemType File
Set-Content C:\Users\James\Desktop\index.html "<html><body><h1>A new file!</h1><p>It's ripe for the picking!</p></body></html>"
Get-Content C:\Users\James\Desktop\index.html
Remove-Item C:\Users\James\Desktop\index.html

#Creating a string list and soring it.

$list = "James","Megan","Jake","Dave"

$list | sort | Get-Unique

#Measuring files

New-Item C:\Users\James\Desktop\NewFile.txt -ItemType File
Set-Content C:\Users\James\Desktop\NewFile.txt 'This file is used to measure the content'
Get-Content C:\Users\James\Desktop\NewFile.txt | Measure-Object -Character -Line -Word
Remove-Item C:\Users\James\Desktop\NewFile.txt
Get-ChildItem | Measure-Object

#Comparing files
New-Item C:\Users\James\Desktop\NewFile1.txt -ItemType File
Set-Content C:\Users\James\Desktop\NewFile1.txt 'This is the first file with stuff on it.'
New-Item C:\Users\James\Desktop\NewFile2.txt -ItemType File
Set-Content C:\Users\James\Desktop\NewFile2.txt 'This is the second one.'

Compare-Object -ReferenceObject $(Get-Content C:\Users\James\Desktop\NewFile1.txt) -DifferenceObject $(Get-Content C:\Users\James\Desktop\NewFile2.txt) -IncludeEqual


#Formatting List

$TXT = Get-ChildItem C:\Users\James\Desktop\*.txt

Format-List -InputObject $TXT


#Formatting Wide

Format-Wide -InputObject $TXT
Format-Wide -InputObject $TXT -Property Length

Remove-Item C:\Users\James\Desktop\NewFile1.txt
Remove-Item C:\Users\James\Desktop\NewFile2.txt

#Where Object

Get-Service | Where-Object {$_.Status -eq "Stopped"}

#Get Child Item

Get-ChildItem -Name

#ForEach

1,2,3,4,5 | ForEach-Object -Process {$_+2}

"The fox jumped over some dog or something, I don't know." |ForEach-Object {$_.Split(" ")}

#Start-Sleep
Start-Sleep -Seconds 3

#Gathering input with Read-Host

$choice = Read-Host "Please input a number"

$choice

#Select and Sort Object

1,2,3,1,2,5,6,2,1,4,3,1,3,5 | Sort-Object | Select-Object -Unique

#Writing a warning

Write-Warning  "This is a warning"

#Writing a host

Write-Host ("A","B","C","D","E","F") -Separator ", -> " -ForegroundColor DarkGreen -BackgroundColor White

#Measure Command

Measure-Command { Get-EventLog "Windows PowerShell" }

#Get history

Get-History

#Get Culture

Get-Culture