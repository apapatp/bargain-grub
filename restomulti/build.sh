# build.sh

# Path to you project root
PROJ_ROOT=/protected/

# Build the app container image
docker build -t bargaingrub-app-image -f "Dockerfile" "$PROJ_ROOT"

# Build the DB container image
docker build -t bargaingrub-db-image -f "Dockerfile-db" "$PROJ_ROOT"