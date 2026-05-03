# 🚂 AI Train Traffic Control System (ATTCS)

> An intelligent, real-time train traffic management system powered by a native Java AI engine.

[![Java](https://img.shields.io/badge/Java-17-orange?style=flat-square&logo=openjdk)](https://openjdk.org/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.2.5-brightgreen?style=flat-square&logo=springboot)](https://spring.io/projects/spring-boot)
[![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)](LICENSE)

---

## 📋 Overview

ATTCS is a **self-contained Java Spring Boot application** that simulates and manages train traffic across a rail network using artificial intelligence. The system features a real-time interactive dashboard, AI-driven traffic optimization, delay prediction, smart dispatching, and capacity planning — all implemented natively in Java without external AI/ML dependencies.

---

## 🏗️ Architecture

```
┌──────────────────────────────────────────────────┐
│                   Frontend (UI)                   │
│         Thymeleaf + Vanilla JS + CSS              │
│    Real-time Dashboard • Maps • Analytics         │
├──────────────────────────────────────────────────┤
│               REST API Controllers                │
│  Dashboard • Train • Signal • Route • Dispatch    │
│  Prediction • Capacity • Maintenance              │
├──────────────────────────────────────────────────┤
│              AI Engine (Native Java)              │
│  Optimizer • Predictor • Dispatcher • Rescheduler │
├──────────────────────────────────────────────────┤
│              Service Layer                        │
│  TrainService • SignalService • NetworkService    │
│  CapacityService • TrafficAI                      │
├──────────────────────────────────────────────────┤
│              Data Layer (H2 + JPA)                │
│  In-memory database for development               │
└──────────────────────────────────────────────────┘
```

---

## ✨ Key Features

| Feature | Description |
|---------|-------------|
| 🧠 **AI Optimizer** | Route optimization using weighted scoring algorithms |
| 📊 **Delay Predictor** | Predicts train delays based on historical patterns and network conditions |
| 🚦 **Smart Signals** | Automated signal management with conflict detection |
| 📋 **AI Dispatcher** | Intelligent train dispatching with priority-based scheduling |
| 🔄 **Auto Rescheduler** | Dynamic rescheduling when disruptions are detected |
| 📈 **Capacity Planning** | Origin-to-destination capacity analysis with risk assessment |
| 🛠️ **Maintenance Tracker** | Infrastructure maintenance scheduling and alerts |
| 🗺️ **Network Visualization** | Interactive rail network map with live train positions |
| ⚡ **Real-time Dashboard** | Live monitoring with auto-refreshing data panels |

---

## 🛠️ Tech Stack

- **Backend:** Java 17, Spring Boot 3.2.5, Spring Data JPA
- **Frontend:** Thymeleaf, Vanilla JavaScript, CSS3
- **Database:** H2 (in-memory, development)
- **Build Tool:** Maven
- **AI Engine:** Custom Java implementation (no external ML libraries)

---

## 📂 Project Structure

```
AI(ATTCS)/
├── src/main/java/com/attcs/
│   ├── AttcsApplication.java          # Main entry point
│   ├── config/                        # Web configuration
│   ├── controller/                    # REST API endpoints
│   │   ├── DashboardController.java   # Main dashboard data API
│   │   ├── TrainController.java       # Train CRUD operations
│   │   ├── SignalController.java      # Signal management
│   │   ├── RouteController.java       # Route operations
│   │   ├── DispatchController.java    # AI dispatch endpoint
│   │   ├── PredictionController.java  # Delay predictions
│   │   ├── CapacityController.java    # Capacity analysis
│   │   └── MaintenanceController.java # Maintenance tracking
│   ├── model/                         # Data models (JPA entities)
│   │   ├── Train.java, Signal.java, Route.java
│   │   ├── Station.java, Alert.java, Prediction.java
│   │   └── CapacitySegment.java, DispatchItem.java
│   ├── repository/                    # JPA repositories
│   └── service/                       # Business logic + AI engine
│       ├── TrafficAI.java             # Core AI orchestrator
│       ├── AiOptimizerService.java    # Route optimization
│       ├── AiPredictorService.java    # Delay prediction
│       ├── AiDispatcherService.java   # Smart dispatching
│       ├── AiReschedulerService.java  # Dynamic rescheduling
│       ├── CapacityService.java       # Capacity planning
│       ├── TrainService.java          # Train management
│       ├── SignalService.java         # Signal management
│       └── NetworkService.java        # Network topology
├── src/main/resources/
│   ├── application.properties         # App configuration
│   ├── templates/index.html           # Main dashboard HTML
│   └── static/
│       ├── app.js                     # Frontend logic (85KB)
│       └── styles.css                 # UI styling (77KB)
└── pom.xml                            # Maven dependencies
```

---

## 🚀 Getting Started

### Prerequisites
- **Java 17** or higher
- **Maven 3.6+**

### Run the Application

```bash
# Clone the repository
git clone https://github.com/silla23-r/AI-ATTCS.git
cd AI-ATTCS

# Build and run
mvn spring-boot:run
```

### Access the Dashboard

Open your browser and navigate to:

```
http://localhost:8080
```

---

## 📡 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/dashboard` | Full dashboard data |
| `GET` | `/api/trains` | List all trains |
| `GET` | `/api/signals` | List all signals |
| `GET` | `/api/routes` | List all routes |
| `POST` | `/api/dispatch/optimize` | Run AI dispatcher |
| `POST` | `/api/predictions/generate` | Generate delay predictions |
| `POST` | `/api/capacity/analyze` | Analyze route capacity |
| `GET` | `/api/maintenance` | Maintenance items |

---

## 👤 Author

**Silla Rohan Kumar**

---

## 📄 License

This project is for educational purposes.
