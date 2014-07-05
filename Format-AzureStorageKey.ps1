Function Format-AzureStorageKey {
   [CmdletBinding()]
   Param (
      [parameter(Mandatory=$True,ValueFromPipelineByPropertyName=$True)]
      [string[]] $Primary,
      [parameter(Mandatory=$True,ValueFromPipelineByPropertyName=$True)]
      [string[]] $Secondary,
      [parameter(Mandatory=$True,ValueFromPipelineByPropertyName=$True)]
      [string[]] $StorageAccountName,

      [switch] $AsConnectionString, # noop since is really only current option
      [switch] $UseSecondary,
      [switch] $UseHttp

      # Not providing UsePrimary or UseHttps switches since they are defaults
      # Consider adding support for proxies and specific services:
      #    http://msdn.microsoft.com/en-us/library/azure/ee758697.aspx
   )

   if ($UseSecondary) {
      $key = $Secondary
   }
   else {
      $key = $Primary
   }

   if ($UseHttp) {
      $protocol = "http"
   }
   else {
      $protocol = "https"
   }

   Write-Host "DefaultEndpointsProtocol=$protocol;AccountName=$StorageAccountName;AccountKey=$key"
}

