param rgLocation string = resourceGroup().location

param storageConfig object = {
  storage1: {
    name: 'adstore1'
    skuName: 'Standard_LRS'
  }
  storage2: {
    name: 'adstore2'
    skuName: 'Premium_LRS'
  }
}

resource createStorages 'Microsoft.Storage/storageAccounts@2021-06-01' = [for config in items(storageConfig): {
  name: '${config.value.name}${uniqueString(resourceGroup().id)}'
  location: rgLocation
  sku: {
    name: config.value.skuName
  }
  kind: 'StorageV2'
}]
