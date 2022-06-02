function Show-AllAccountTenantIds {
    $ids = az account tenant list | ConvertFrom-Json | ForEach-Object { $_.tenantId }
    return $ids
}

function Show-AllAccountIds {
    $names = az account tenant list | ConvertFrom-Json | ForEach-Object { $_.id}
    return $names
}

Function New-AppRegistration {
    param( [String]$Name,  [String]$Role,  [String]$Scopes)
    $credentials = az ad sp create-for-rbac `
        --name $Name `
        --role $Role `
        --scopes $Scopes `
        --query "{ client_id: appId, client_secret: password, tenant_id: tenant }" | ConvertFrom-Json 
    return $credentials
}

Function Remove-AllAppRegistrations {
    $app_registrations = az ad app list --all | ConvertFrom-Json | ForEach-Object { $_.appId }
    $app_registrations | ForEach-Object {az ad app delete --id $_}
}






