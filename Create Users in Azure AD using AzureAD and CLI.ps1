# Manage users in Azure Active Directory
# Using AzureAD Module
# Install AzureAD Module & Connect to Azure AD
Install-Module AzureAD
Import-Module AzureAD
Connect-AzureAD

# Create a password object
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile

# Assign the password
$PasswordProfile.Password = "^RYvqt$*aO#u"

# Create the new user
New-AzureADUser -AccountEnabled $True -DisplayName "Teddy Bear" -PasswordProfile $PasswordProfile -MailNickName "TeddyyB" -UserPrincipalName "TeddyB@aventurecloud.com"


# Using CLI
# Install CLI Module & Connect to Azure AD
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi

Az login

# Create the new user
az ad user create `
--display-name "Tom Cruise" `
--password "^RYvqt$*aO#u" `
--user-principal-name "TomC@aventurecloud.com" `
--force-change-password-next-login true `
--mail-nickname "TomC"





