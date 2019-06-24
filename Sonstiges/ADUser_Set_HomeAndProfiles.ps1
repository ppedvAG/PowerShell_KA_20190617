Import-Module ActiveDirectory

Foreach ($benutzer in ($allebenutzer = Get-ADUser -Filter *))
{
	Set-ADUser  -Identity $benutzer
                -HomeDirectory ("\\domain.intern\namespace\Homes\" + $benutzer.sAMAccountName)
                -ProfilePath ("\\domain.intern\namespace\Profiles\" + $benutzer.sAMAccountName)
}	

