$phrase = Read-Host "Insert Phrase"

$phrase = $phrase.Replace("'","")
$phrase = $phrase.Replace("i","|")
$phrase = $phrase.Replace("o","()")
$phrase = $phrase.Replace("0","()")
$phrase = $phrase.Replace("ee","55")
$phrase = $phrase.Replace("s","5")
$phrase = $phrase.Replace("w","5")
$phrase = $phrase.Replace("e","[-")
$phrase = $phrase.Replace(" to "," 2 ")
$phrase = $phrase.Replace(" too "," 2 ")

$index = -1
$LastLetter = "-"

foreach ($letter in $phrase.ToCharArray()){
    $index += 1

    if($LastLetter -ne " " -and $letter -eq "a" ){
  
        $Phrase = $phrase.Insert($index,"A")
        
        $index += 1
    }

    $LastLetter = $letter
}
$phrase = $phrase.Replace('Aa',"A")
$phrase
pause
