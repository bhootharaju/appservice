# -----------------------------
# VARIABLES
# -----------------------------
$resourceGroup = "myResourceGroup"
$location      = "EastUS"
$acrName       = "myuniqueregistry123"   # Must be globally unique



# -----------------------------
# CREATE RESOURCE GROUP
# -----------------------------
New-AzResourceGroup -Name $resourceGroup -Location $location

# -----------------------------
# CREATE ACR
# -----------------------------
New-AzContainerRegistry -ResourceGroupName $resourceGroup -Name $acrName -Sku Basic -EnableAdminUser


