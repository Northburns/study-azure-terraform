# Set these to that csv file:
# ARM_CLIENT_ID
# ARM_SUBSCRIPTION_ID
# ARM_TENANT_ID
# ARM_CLIENT_SECRET

Import-Csv "Set-EnvVars.csv" | Foreach-Object { 

    $key = $_.KEY
    $value = $_.VALUE
    
    Write-Host "$key = $value"
    Set-Item env:\$key -Value $value
}

