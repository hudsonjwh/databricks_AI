# 02_create-cluster-test.sh

echo "Now creating default All-Purpose cluster for workspace at time $(date +"%H:%M:%S")"

databricks clusters create --json '{
  "data_security_mode": "DATA_SECURITY_MODE_DEDICATED",
  "single_user_name": "hudsonjwh@hudsonjwh.onmicrosoft.com",
  "cluster_name": "my_cluster",
  "kind": "CLASSIC_PREVIEW",
  "azure_attributes": {
        "first_on_demand": 1,
        "spot_bid_max_price": -1
    },
  "runtime_engine": "STANDARD",
  "spark_version": "15.4.x-scala2.12",
  "node_type_id": "Standard_D4s_v3",
  "autotermination_minutes": 20,
  "use_ml_runtime": true,
  "is_single_node": false,
  "autoscale": {
    "min_workers": 2,
    "max_workers": 8
  }
}' --profile test

echo "Finished creating the dev cluster at time: $(date +"%H:%M:%S")"