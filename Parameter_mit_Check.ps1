Function Test 
{ 
    Param(
        [ValidateSet("Hans", "Franz", "Paul", "Karl")]
        [String]$Name,

        [ValidateRange(18,49)]         
        [Int]$Age
    ) 

    Write-Host "Die Person heißt $Name und ist $Age Jahre alt." 
}

Test -Name Lisa -Age 52