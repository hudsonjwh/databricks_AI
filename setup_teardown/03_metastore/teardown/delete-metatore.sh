# 01_credential_location.sh
# creates the storage credential and the base location for all the catalogs in unity catalog

# Define variables for the workspace
export METASTORE_NAME="databricks-metastore-southcentralus"

# delete the metastore

echo "Now deleting the metastore $METASTORE_NAME"

export METASTORE_ID=$(databricks metastores list --output json | jq -r '.[0].metastore_id')
echo "metastore id: $METASTORE_ID"

databricks metastores delete "$METASTORE_ID"

echo "metastore will not delete if not empty"

echo "Finished"