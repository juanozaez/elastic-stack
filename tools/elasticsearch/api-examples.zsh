### API BASICS

# CREATE document: it also creates an index called home
curl  --header "Content-Type: application/json" \
      --request PUT \
      --data '{"level":"ERROR","message":"NullPointerException...."}' \
      http://localhost:9200/home/_doc/1 \
      | jq

curl  --header "Content-Type: application/json" \
      --request PUT \
      --data '{"level":"INFO","message":"User created"}' \
      http://localhost:9200/home/_doc/2 \
      | jq

# GET document
curl --request GET http://localhost:9200/home/_doc/1 | jq

# Index metadata
curl --request GET http://localhost:9200/home | jq

# QUERY documents
## Query param
# shellcheck disable=SC1001
curl --request GET http://localhost:9200/home/_search\?q\=level:ERROR | jq

## Json body param
curl  --header "Content-Type: application/json" \
      --request GET \
      --data '{"query": { "query_string": {  "fields" : ["level"], "query": "ERROR or INFO" } } }' \
      http://localhost:9200/home/_search | jq

curl  --header "Content-Type: application/json" \
      --request GET \
      --data '{ "query": { "match": { "ip": "49.37.40.84" } } }' \
      http://localhost:9200/home/_search | jq
