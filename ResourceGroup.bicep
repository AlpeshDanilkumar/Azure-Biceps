targetScope = 'subscription'

resource azbicepresourcegroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'az-bicep-resourcegroup'
  location: 'eastus'
} 
