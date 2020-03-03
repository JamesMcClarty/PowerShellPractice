#Setting up variables

$location = Get-Location

$location

$location | Get-Member

$PathString = $location.ToString()

$PathString

#Operators

$LargerNum = 4

$SmallerNum = 1

$LargerNum -eq $SmallerNum

$LargerNum -gt $SmallerNum

$LargerNum -lt $SmallerNum

$CombinedNum = $LargerNum + $SmallerNum

$CombinedNum += $LargerNum

$CombinedNum

#Loops

$NumArray = @(1,2,3,4,5);

$ForLoopTotal = 0

for($i = 0; $i -lt $NumArray.Length; $i++)
{
    $ForLoopTotal += $NumArray[$i]
}

$ForLoopTotal

$NumArray | foreach { $ForLoopTotal += $_ }

$ForLoopTotal

while($ForLoopTotal -gt 2){
$ForLoopTotal = $ForLoopTotal / 2
}

$ForLoopTotal 

# HashTable practice

$hash = [ordered]@{ID = 1; Shape = "Circle"; Color = "Red"}

$hash

$hash["ID"]

$hash.Add("Sides","None")

$hash.Remove("Color")

$hash.GetEnumerator() | Sort-Object -Property key