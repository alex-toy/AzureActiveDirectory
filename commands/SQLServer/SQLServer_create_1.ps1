################################################################
# SQL database :

$Global:SQLAdminUser = "alexadmin"
$Global:SQLAdminPassword = "p@ssword1234"
$Global:SQLServerName = "alexei-server-test2"
$Global:SQLLocation = "francecentral"
$Global:SQLEnablePublicNetwork = "true"
$Global:SQLBDName = "alexei-db-test"
$Global:FirewallRuleName = "azureaccess"
$Global:ClientIPFirewallRuleName = "clientip"
$Global:Tier = "Basic"


################################################################
#CREATE SQL SERVER :

az sql server create `
    --admin-user $SQLAdminUser `
    --admin-password $SQLAdminPassword `
    --name $SQLServerName `
    --resource-group $RGName `
    --location $RGLocation `
    --enable-public-network $SQLEnablePublicNetwork `
    --verbose


################################################################
#CREATE FIREWALL RULES :

#allow Allow Azure services and resources to access the server we just created.
az sql server firewall-rule create `
    -g $RGName `
    -s $SQLServerName `
    -n $FirewallRuleName `
    --start-ip-address 0.0.0.0 `
    --end-ip-address 0.0.0.0 `
    --verbose






