# Changelog

All notable changes to this project will be documented here.

The format is roughly based on [Keep a Changelog](https://keepachangelog.com/),
but kept intentionally short. Dates are in `YYYY-MM-DD` and the most recent
entry is on top.

---

## [Unreleased]

### Added
- Nothing yet.

---

## 2026-08-10 — Initial skeleton

### Added
- FastAPI application skeleton (`app/main.py`) with a single `/health`
  endpoint that returns `{"status": "ok"}`.
- `pyproject.toml` defining the `web-monitor` package, runtime dependencies
  (FastAPI, Uvicorn, Pydantic), and dev dependencies (pytest, httpx).
- `app/__init__.py` exposing the package version.
- First test (`tests/test_health.py`) verifying the `/health` endpoint.
- `Dockerfile` (Python 3.11-slim, non-root user) and `docker-compose.yml`
  exposing the app on port 8000.
- GitHub Actions CI workflow (`.github/workflows/ci.yml`) running `pytest`
  on Python 3.11 for every push and pull request.
- Persistent project state files: `ROADMAP.md`, `TODO.md`, `CHANGELOG.md`,
  `docs/development-log.md`.
- `README.md` with quick start, test, and Docker instructions.

### Notes
- No real features yet — this is the foundation day. The next daily runs
  add configuration, logging, and the first database model.
