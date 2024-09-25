#!/bin/bash

# Log function to write messages to the console only
log() {
  echo "$1"
}

# Start logging
log "Starting TypeScript project setup..."

# Prompt for project name
log "Enter the project folder name (or '.' for the current folder):"
read project_name

# Create the folder if not in the current directory
if [ "$project_name" != "." ]; then
  log "Creating project directory: $project_name"
  mkdir "$project_name"
  cd "$project_name" || { log "Error: Failed to enter project directory."; exit 1; }
else
  log "Using the current directory."
fi

# Initialize npm
log "Running npm init -y..."
npm init -y
if [ $? -ne 0 ]; then
  log "Error: npm initialization failed."
  exit 1
fi

# Initialize TypeScript
log "Running npx tsc --init..."
npx tsc --init
if [ $? -ne 0 ]; then
  log "Error: TypeScript initialization failed."
  exit 1
fi

# Create src folder and index.ts file
log "Creating src directory and index.ts file..."
mkdir -p src
echo "// Entry point for the app" > src/index.ts
if [ $? -ne 0 ]; then
  log "Error: Failed to create src directory or index.ts."
  exit 1
fi

# Modify tsconfig.json to set rootDir and outDir
log "Modifying tsconfig.json for rootDir and outDir..."
sed -i 's|// "rootDir": "./",|"rootDir": "./src",|' tsconfig.json
sed -i 's|// "outDir": "./",|"outDir": "./dist",|' tsconfig.json
if [ $? -ne 0 ]; then
  log "Error: Failed to modify tsconfig.json."
  exit 1
fi

# Final success message
log "TypeScript project setup complete!"
