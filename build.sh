#!/bin/bash

echo "Building BFHL Java project..."

# Compile
echo "Compiling Main.java..."
javac -d . src/Main.java

if [ $? -eq 0 ]; then
    echo "✓ Compilation successful!"
    echo ""
    echo "To run: java Main"
    echo ""
    echo "To create JAR: ./build.sh jar"
    
    if [ "$1" = "jar" ]; then
        echo "Creating JAR file..."
        jar cfm bfhl.jar manifest.txt Main.class final_query.sql
        echo "✓ JAR created: bfhl.jar"
        echo "To run JAR: java -jar bfhl.jar"
    fi
else
    echo "✗ Compilation failed!"
    exit 1
fi 