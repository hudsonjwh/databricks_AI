# 01_create-cluster-dev.sh

echo "Now creating default All-Purpose cluster for workspace"
databricks clusters create --json @./setup_teardown/04_clusters/my_cluster.json --profile DEFAULT