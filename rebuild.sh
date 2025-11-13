docker compose -p aisandbox -f docker-compose.yml down 
docker compose -p aisandbox -f docker-compose.yml up --force-recreate --build  -d
