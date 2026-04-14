# 🚀 Maven Build Project - DevOps Practice

## 📌 Overview

This project demonstrates how to build Java applications using **Maven** in a real-world DevOps workflow.

It covers the complete flow:

```
Raw Code (.java) → Build → Test → Artifact → Deployment
```

👉 The final output is called an **Artifact** (JAR/WAR/EAR file)

---

## 🧠 What is Maven?

**Maven** is a build and project management tool used to:

* Manage dependencies

* Build applications

* Run tests

* Generate artifacts

* Maintain project structure

* Developed by: Apache Software Foundation

* Language: Java

* First released: 2004

* Maven Home Directory: `~/.m2`

---

## 📦 Types of Artifacts

| Type   | Description                      |
| ------ | -------------------------------- |
| `.jar` | Java Archive (Backend code)      |
| `.war` | Web Archive (Frontend + Backend) |
| `.ear` | Enterprise Archive (JAR + WAR)   |

---

## 🔄 Java Build Flow

```
.java → .class → .jar
```

* `.java` → Source code
* `.class` → Compiled bytecode
* `.jar` → Final artifact

---

## 📁 Important File

### 🔹 `pom.xml`

* Stands for **Project Object Model**
* Contains:

  * Project details
  * Dependencies
  * Plugins
  * Build configuration

---

## 🧪 Lab Setup (AWS EC2 - Amazon Linux)

### Step 1: Install Required Tools

```bash
sudo yum install git maven tree -y
```

### Step 2: Verify Maven

```bash
mvn -v
```

### Step 3: Clone Project

```bash
git clone https://github.com/SumanAddi/All-About-MAVEN.git
cd java-project-maven-new
```

### Step 4: View Structure

```bash
tree
```

---

## ⚙️ Maven Lifecycle & Commands

### 🔹 Maven Goals

A **goal** is a task executed by Maven.

---

### 1️⃣ Validate

```bash
mvn validate
```

---

### 2️⃣ Compile

```bash
mvn compile
```

* Converts `.java` → `.class`
* Output stored in `target/`

---

### 3️⃣ Test

```bash
mvn test
```

* Runs unit tests

---

### 4️⃣ Package

```bash
mvn package
```

* Creates artifact (`.jar` / `.war`)

---

### 5️⃣ Install

```bash
mvn install
```

* Copies artifact to local repo (`~/.m2`)

---

### 6️⃣ Clean

```bash
mvn clean
```

* Deletes `target/` folder

---

### ✅ Most Used Command

```bash
mvn clean package
```

* Cleans + Builds + Packages in one step

---

## 🔄 Maven Lifecycle Flow

```
Validate → Compile → Test → Package → Install → Deploy
```

---

## 🔌 Plugins

* Small tools used by Maven
* Automatically downloaded when needed
* Help automate tasks

---

## ❗ Problems Without Maven

* No proper project structure
* Difficult dependency management
* Manual build process
* No easy artifact creation

---

## 🔁 Alternative Build Tools

| Language | Tool           |
| -------- | -------------- |
| Java     | Maven / Gradle |
| Python   | pip / poetry   |
| Node.js  | npm            |
| C/C++    | Make           |
| .NET     | MSBuild        |

---

## ⚔️ Maven vs ANT

| Feature     | Maven                | ANT         |
| ----------- | -------------------- | ----------- |
| Type        | Build + Project Tool | Build Tool  |
| Config File | `pom.xml`            | `build.xml` |
| Lifecycle   | Yes                  | No          |
| Reusability | High                 | Low         |
| Approach    | Declarative          | Procedural  |

---

## 🧩 Key Concepts

### Dependency Management

* Handles required libraries automatically
* Supports:

  * Transitive dependencies
  * Version control
  * Scope (test, compile, etc.)

---

### Repository Types

* **Local Repo** → `~/.m2`
* **Central Repo** → Online Maven repo

---

## 🛠️ Troubleshooting

* Run commands in project root (where `pom.xml` exists)
* Check Java version compatibility
* Use:

```bash
mvn help:effective-pom
mvn dependency:tree
```

---

## 🎯 Summary

Maven simplifies the build process by:

* Managing dependencies
* Automating builds
* Creating artifacts
* Maintaining project consistency


