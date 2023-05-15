resource bicepappServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'azbicep-dev-net-asp1'
  location: resourceGroup().location
  sku: {
    name: 'S1'
    capacity: 1
  }
}

resource bicepappService 'Microsoft.Web/sites@2021-01-15' = {
  name: 'azbicep-dev-net-webapp1'
  location: resourceGroup().location
  properties: {
    serverFarmId: resourceId('Microsoft.Web/serverfarms', 'azbicep-dev-net-asp1')
  }
}

resource azbicepwebapp1appsetting 'Microsoft.Web/sites/config@2022-09-01' = {
  name: 'web'
  parent: bicepappService
  properties: {
    appSettings: [
      {
        name: 'APPINSIGHT_INSTRUMENTATIONKEY'
        value: bicepappInsights.properties.InstrumentationKey
      }
    ]
  }
}

resource bicepappInsights 'Microsoft.Insights/components@2020-02-02' = {
  name: 'azbicep-dev-net-webapp1-ai'
  location: resourceGroup().location
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }
}
