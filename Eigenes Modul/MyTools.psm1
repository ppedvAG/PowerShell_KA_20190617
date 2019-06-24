<# 
 .Synopsis
  Berechnet den Netto-Betrag.

 .Description
  Berechnet von einem übergebenen Betrag den Netto-Betrag aus.

 .Parameter Brutto
  Betrag, aus dem der Netto-Betrag berechnet werden soll

 .Parameter MwSt
  Gibt den gewünschten Mehrwertsteuer-Satz an. Standard ist 19 (19%).

 .Example
   # Show a default display of this month.
   Get-Netto -Brutto 100

 .Example
   # Show a default display of this month.
   Get-Netto -Brutto 149.99

 .Example
   # Display a date range.
   Get-Netto -Brutto 100 -MwSt 20
#>

function Get-Netto
{
    [CmdletBinding()]
    [Alias('gn')]

    Param(
        [Parameter(Mandatory=$True, ValueFromPipeline=$True, Position=0)]
        [Double]$Brutto,
        
        [int]$MwSt = 19
    )

    Process
    {
        $Netto = $Brutto / ((100 + $MwSt) /100)
        $Netto = [Math]::Round($Netto,2)

        Write-Host $Netto
    }
}


<# 
 .Synopsis
  Berechnet den Brutto-Betrag.

 .Description
  Berechnet von einem übergebenen Betrag den Brutto-Betrag aus.

 .Parameter Brutto
  Betrag, aus dem der Brutto-Betrag berechnet werden soll

 .Parameter MwSt
  Gibt den gewünschten Mehrwertsteuer-Satz an. Standard ist 19 (19%).

 .Example
   # Show a default display of this month.
   Get-Brutto -Netto 100

 .Example
   # Show a default display of this month.
   Get-Brutto -Netto 149.99

 .Example
   # Display a date range.
   Get-Brutto -Netto 100 -MwSt 20
#>

function Get-Brutto
{
    [CmdletBinding()]
    [Alias('gb')]

    Param(
    [Parameter(Mandatory=$True, ValueFromPipeline=$True, Position=0)]
    [Double]$Netto,
        
    [int]$MwSt = 19
    )

    Process
    {
        $Brutto = $Netto * ((100 + $MwSt) /100)
        $Brutto = [Math]::Round($Brutto,2)

        Write-Host $Brutto
    }
}


