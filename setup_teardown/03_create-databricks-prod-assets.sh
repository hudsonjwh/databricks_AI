# 01_create-databricks-prod-assets.sh

# ./setup_teardown/01_metastore_storage/storage-account.sh
./setup_teardown/02_workspaces/01_databricks-prod.sh
# ./setup_teardown/03_metastore/create-metastore.sh
./setup_teardown/04_metastore_catalogs/01_catalog-prod.sh
./setup_teardown/05_clusters/01_create-cluster-prod.sh