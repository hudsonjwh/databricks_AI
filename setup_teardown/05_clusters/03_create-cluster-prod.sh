# 03_create-cluster-prod.sh

echo "Now creating default All-Purpose cluster for workspace"
databricks clusters create --json @./setup_teardown/04_clusters/my_cluster.json --profile prod