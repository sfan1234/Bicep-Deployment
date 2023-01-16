param staNames array = [
  '4besarraystorage'
  '4besanotherstorage'
]

resource arraySta 'Microsoft.Storage/storageAccounts@2021-04-01' = [for staName in staNames: {
  name: staName
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS' 
  }  
  kind: 'StorageV2'

}]
