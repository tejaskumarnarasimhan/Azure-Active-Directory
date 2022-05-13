#Convert Guest user to Member
________________

#Optional
Install-Module -Name AzureAD
Import-Module -Name Azure AD

#Connect to Azure
Connect-AzureAD

#Get the Guest Object ID
Get-AzureADUser -ObjectId "neo.powershell_gmail.com#EXT#@azsharper.onmicrosoft.com"


#Note the Object ID: 505c0b23-74ab-400e-9b36-2a9fb478ef01

#Update User Type to Member
Set-AzureADUser -objectid 505c0b23-74ab-400e-9b36-2a9fb478ef01 -UserType “Member”

#Update UPN, To modify the login ID from the Guest format to a standard format, run this command:
Set-MsolUserPrincipalName -UserPrincipalName "neo.powershell_gmail.com#EXT#@azsharper.onmicrosoft.com" -NewUserPrincipalName "neo.powershell@cloudcxsoft.com"

#Set the Usage Location
Set-MsolUser -UserPrincipalName neo.powershell@cloudcxsoft.com -UsageLocation "US"

#Set a Default Password
Set-MsolUserPassword -UserPrincipalName "neo.powershell@cloudcxsoft.com" -ForceChangePassword $true

#Note the password displayed: Zoq84654

#The last step is to connect to either portal or myapplications URL and change the password during first login

#You can also verify the User Type status in portal or using this command:
Get-AzureADUser -SearchString "Neo"