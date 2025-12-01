# BFHL Bajaj Finance Round 1 - Java Webhook Client

This project sends your SQL query to the BFHL webhook endpoint with JWT authentication. It's now set up as a Maven project that automatically builds and releases downloadable JAR files.

## 🚀 Quick Start

### Option 1: Download Pre-built JAR (Recommended)
1. Go to [Releases](https://github.com/error-144/bajaj_fin_round1/releases)
2. Download the latest `bajaj-fin-round1.jar`
3. Run: `java -jar bajaj-fin-round1.jar`

### Option 2: Build from Source
```bash
# Build with Maven
mvn clean package

# Run the JAR
java -jar target/bajaj-fin-round1-1.0.0.jar
```

## 📁 Project Structure
- `src/main/java/com/bfhl/Main.java` - Main Java class with embedded SQL query
- `pom.xml` - Maven configuration
- `create_table.sql` - Database schema and sample data
- `.github/workflows/release.yml` - Automated JAR building and releases

## 🔧 Configuration
The webhook URL and JWT token are hardcoded in `Main.java`:
```java
private static final String WEBHOOK = "https://bfhldevapigw.healthrx.co.in/hiring/testWebhook/JAVA";
private static final String ACCESS_TOKEN = "your-jwt-token-here";
```

## 🎯 What it does
1. **Embeds SQL Query**: Your SQL solution is hardcoded in the program
2. **Sends Webhook**: POSTs the query as JSON to the BFHL endpoint
3. **JWT Authentication**: Uses your embedded JWT token
4. **Reports Results**: Shows HTTP status and server response

## 📦 Automated Releases
- **GitHub Actions** automatically builds JAR files on every tag
- **Pre-built JARs** are available in the Releases section
- **No compilation needed** - just download and run!

## 🏗️ Build Commands
```bash
# Clean and package
mvn clean package

# Skip tests (faster)
mvn clean package -DskipTests

# Create release tag (triggers automated build)
git tag v1.0.0
git push origin v1.0.0
```

## 📋 Requirements
- **Java 17+** (for Maven build)
- **Maven 3.6+** (for building from source)
- **Network access** to the webhook URL

## 🔄 Update Process
1. Modify `Main.java` with new JWT token if needed
2. Commit changes: `git add . && git commit -m "Update token"`
3. Create new tag: `git tag v1.1.0`
4. Push tag: `git push origin v1.1.0`
5. GitHub Actions will automatically build and release the new JAR

## 📥 Download Links
- **Latest Release**: [GitHub Releases](https://github.com/error-144/bajaj_fin_round1/releases)
- **Raw JAR**: Direct download from releases page
- **Source Code**: Clone this repository 