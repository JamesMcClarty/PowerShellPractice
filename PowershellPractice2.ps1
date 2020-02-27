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

#Creating a string list

$list = "a","b","c","d"