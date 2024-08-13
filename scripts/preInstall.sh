set -o allexport; source .env; set +o allexport;

sed -i "s~PASSWORD_TO_CHANGE~${ADMIN_PASSWORD}~g" ./milvus.yaml
sed -i "s~ACCESS_KEY_TO_CHANGE~${MINIO_ACCESS_KEY}~g" ./milvus.yaml
sed -i "s~SECRET_KEY_TO_CHANGE~${MINIO_SECRET_KEY}~g" ./milvus.yaml