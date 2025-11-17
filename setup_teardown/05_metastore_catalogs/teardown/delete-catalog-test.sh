# delete catalog-test.sh

# Define variables
export CATALOG_NAME="catalog-test"
export PROFILE="DEFAULT"

# delete the catalog
echo "Now deleting catalog $CATALOG_NAME"  
databricks catalogs delete $CATALOG_NAME --force --profile "$PROFILE"

echo "Finished ..."