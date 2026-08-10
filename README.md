# Web Monitor

A self-hosted web monitoring application.

Users can add URLs, periodically check their content, detect changes, store history,
display status, view change history, receive notifications, and — eventually —
have AI summarize important changes.

This is an intentionally slow, long-term project. The repository evolves one
small, well-tested improvement at a time.

---

## Status

**Phase:** Month 1 — Foundation
**Latest milestone:** Initial FastAPI skeleton with one health endpoint and one test.

See [`ROADMAP.md`](./ROADMAP.md) for the long-term plan,
[`CHANGELOG.md`](./CHANGELOG.md) for what changed,
[`TODO.md`](./TODO.md) for the immediate next tasks, and
[`docs/development-log.md`](./docs/development-log.md) for the day-by-day log.

## Quick start (development)

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -e ".[dev]"
uvicorn app.main:app --reload --port 8000
```

Then visit http://localhost:8000/health.

## Tests

```bash
pytest
```

## Docker

```bash
docker compose up --build
```

## License

MIT — see [`LICENSE`](./LICENSE).
