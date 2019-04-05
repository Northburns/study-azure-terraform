# Set these to that csv file:
#
# (Used by Terraform)
# ARM_CLIENT_ID
# ARM_SUBSCRIPTION_ID
# ARM_TENANT_ID
# ARM_CLIENT_SECRET
#
# (used by K8s)
# TF_VAR_client_id
# TF_VAR_client_secret

Import-Csv "Set-EnvVars.csv" | Foreach-Object { 

    $key = $_.KEY
    $value = $_.VALUE
    
    Write-Host "$key = $value"
    Set-Item env:\$key -Value $value
}

