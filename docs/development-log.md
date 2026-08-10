# Development log

A short entry per day. Concise. Just enough for a future execution — or a
human reviewer — to understand how the project evolved.

---

## 2026-08-10 — Day 1: foundation

**Task:** Bootstrap the project from scratch.

**What changed:**
- Created the GitHub repository `zeaitoun/web-monitor` (public, MIT).
- Added `app/main.py` with a minimal FastAPI app exposing `/health` and
  returning `{"status": "ok"}`.
- Added `pyproject.toml` (project metadata, runtime + dev dependencies).
- Added `tests/test_health.py` — one test hitting `/health` via `TestClient`.
- Added `Dockerfile` and `docker-compose.yml`.
- Added `.github/workflows/ci.yml` running `pytest` on every push.
- Added `ROADMAP.md`, `TODO.md`, `CHANGELOG.md`, and this log.

**Tests:**
- `tests/test_health.py::test_health_returns_ok` — passes locally.

**Commit:** see `git log` — first real commit is the initial skeleton.

**Next run:** configuration module (env-driven `Settings`).
