################################################################
# resource Group :

#southcentralus centralus francecentral
$Global:RGName = "sql-RG"
$Global:RGLocation = "francecentral"



################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."commands\SQLServer\SQLServer_create_1.ps1"

."commands\SQLServer\SQLServer_create_2.ps1"


