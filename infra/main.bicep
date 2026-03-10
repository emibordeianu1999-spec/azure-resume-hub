param name string = 'resume-app-${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location

resource staticWebApp 'Microsoft.Web/staticSites@2021-02-01' = {
  name: name
  location: location
  sku: {
    name: 'Free'
    tier: 'Free'
  }
  properties: {
    // We will configure the repository connection later using GitHub Actions
  }
}

output staticWebAppUrl string = staticWebApp.properties.defaultHostname
