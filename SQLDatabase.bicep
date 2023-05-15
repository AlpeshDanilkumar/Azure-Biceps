resource sqlServer 'Microsoft.Sql/servers@2014-04-01' ={
  name: 'azbicep-dev-net-sqlserver'
  location: resourceGroup().location
}

resource sqlServerDatabase 'Microsoft.Sql/servers/databases@2014-04-01' = {
  parent: sqlServer
  name: 'database1'
  location: resourceGroup().location
  properties: {
    collation: 'collation'
    edition: 'Basic'
    maxSizeBytes: 'maxSizeBytes'
    requestedServiceObjectiveName: 'Basic'
  }
}
