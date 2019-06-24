Function Test 
{ 
    Param( 
        [String]$Name, 
        [Int]$Age
    ) 
    If ($Name -NotContains "Hans","Franz","Paul","Karl")
    {
        Throw "$($Name) ist kein gültiger Name! Verwende nur Hans, Franz, Paul oder Karl"
    } 

    If ($age -lt 18 -OR $age -gt 49) 
    {
        Throw "$($age) is not a between 18 and 49"
    } 

    Write-Host "Die Person heißt $Name und ist $Age Jahre alt." 
}

Test -Name Lisa -Age 52