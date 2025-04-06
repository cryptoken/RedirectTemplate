param staticSiteName string
param location string = resourceGroup().location
param repoUrl string
param branch string = 'main'

resource staticWebApp 'Microsoft.Web/staticSites@2022-03-01' = {
  name: staticSiteName
  location: location
  properties: {
    repositoryUrl: repoUrl
    branch: branch
    buildProperties: {
      appLocation: '/'
      apiLocation: ''
      outputLocation: 'build'
    }
  }
}
