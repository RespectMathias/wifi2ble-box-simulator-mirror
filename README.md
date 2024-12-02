# 🛠️ Desk Management REST API (Mirrored Repository)

This repository mirrors the **Desk Management REST API**, simulating desks with configurable properties and real-time state tracking. It builds and publishes the simulator as a Docker image. For full details, visit [the master branch](../../tree/main).

## 🚀 Quick Start

### 🐳 Run with Docker:
```bash
docker run -p 8000:8000 respectmathias/wifi2ble-box-simulator:latest
```

🔧 Pass options via `ARGS`:
```bash
docker run -e ARGS="--port 8080 --speed 100" -p 8080:8080 respectmathias/wifi2ble-box-simulator:latest
```

### 🛠️ Run with Docker Compose:
Add this to your `docker-compose.yml`:
```yaml
version: '3.8'
services:
  desk-simulator:
    image: respectmathias/wifi2ble-box-simulator:latest
    ports:
      - "8000:8000"
    environment:
      ARGS: "--port 8000 --speed 60"
```

Start the simulator:
```bash
docker-compose up
```

## ⚠️ Disclaimer

The simulator’s `main.py` is slightly modified to bind to `0.0.0.0` (required for Docker) instead of `localhost`. This ensures compatibility with containerized environments.
