# Static Web App Redirect

This repo deploys an Azure Static Web App that redirects to [kenyargicoglu.dev](https://kenyargicoglu.dev).

## How to Deploy

Use the Azure CLI:

```bash
az deployment group create \
  --resource-group my-rg \
  --template-file main.bicep \
  --parameters staticSiteName="ken-redirect-swa" \
               repoUrl="https://github.com/<your-username>/<repo>" \
               branch="main"
```
