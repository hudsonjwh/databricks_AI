# 02_catalog-test.sh

# Define variables
export STORAGEACCOUNT="hudsonjwhdbrixmetastore"
export CONTAINER="metastore"
export DIRECTORY="metastorepath"
export CATALOG_NAME="catalog-test"
export PROFILE="test"

export STORAGE_ROOT="abfss://$CONTAINER@$STORAGEACCOUNT.dfs.core.windows.net/$DIRECTORY/$CATALOG_NAME"
echo "Storage root path for the $CATALOG_NAME catalog: $STORAGE_ROOT"

# create the catalog  
databricks catalogs create $CATALOG_NAME --storage-root "$STORAGE_ROOT" --profile $PROFILE

echo "Finished ..."