Usage Setup: 
-------- 

* make sure you have an active cert or logged in account, e.g.: Add-AzureAccount 
* make sure you have selected a subscription within that account with an available storage account - in the Usage section below, that account is 'pragazdiags' which you would replace with your own

Usage: 
-------- 

* Get-AzureStorageKey -StorageAccountName pragazdiags | Format-AzureStorageKey
* Get-AzureStorageKey -StorageAccountName pragazdiags | Format-AzureStorageKey -AsConnectionString
* Get-AzureStorageKey -StorageAccountName pragazdiags | Format-AzureStorageKey -UseSecondary -UseHttp

Output:
------

* DefaultEndpointsProtocol=_**https**_;AccountName=pragazdiags;AccountKey=9+RvXH9SeYuDyueyAtzqQ
bcE52sidWQbCXoxidpn6ZROL20GFVj+Ulc3X7+GbemcWOlYK6sUycAJJqmJaQ0KnQ==
* DefaultEndpointsProtocol=_**https**_;AccountName=pragazdiags;AccountKey=9+RvXH9SeYuDyueyAtzqQ
bcE52sidWQbCXoxidpn6ZROL20GFVj+Ulc3X7+GbemcWOlYK6sUycAJJqmJaQ0KnQ==
* DefaultEndpointsProtocol=_**http**_;AccountName=pragazdiags;AccountKey=TUzONza19iYiZvqU12W9bj
Z/blgG9lygTIKCBXeT3q8K6RaXCC0Xqrm3M3zm6+SiULrY+dbFdTyOl+KmsHqcJg==


Resources: 
-------------- 

* http://msdn.microsoft.com/en-us/library/azure/ee758697.aspx

FAQ:
----

* Why is this such a small repository - having only one function? We can rename it to something more general if more features are added, but for now it seems the best name. Didn't want to get ahead of myself. :-)


