# 01_create-databricks-dev-assets.sh

./setup_teardown/01_metastore_storage/storage-account.sh
./setup_teardown/02_workspaces/01_databricks-dev.sh
./setup_teardown/03_metastore/create-metastore.sh
./setup_teardown/04_metastore_catalogs/01_catalog-dev.sh
./setup_teardown/05_clusters/01_create-cluster-dev.sh