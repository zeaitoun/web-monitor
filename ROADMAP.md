# Roadmap

Long-term goals, current phase, milestones, and candidate next tasks.

This roadmap is intentionally rough. It evolves based on what is actually
discovered while developing the application. Do not treat it as immutable.

---

## Vision

A small, self-hosted web monitoring application that:

1. Lets users add URLs to monitor.
2. Periodically fetches each URL.
3. Detects content changes via content hashing.
4. Stores a complete check history.
5. Exposes a clean dashboard for status and change history.
6. Sends notifications on change (email, optionally Telegram/Discord).
7. Supports keyword monitoring and element-level monitoring.
8. Eventually uses AI to summarize important changes.
9. Stays simple to operate on a single small VPS.

The exact final feature set will be discovered over the year.

---

## Phases

| Phase | Months | Theme                      | Status |
|-------|--------|----------------------------|--------|
| 1     | 1–2    | Foundation                 | **active** |
| 2     | 3–4    | Monitoring engine          | not started |
| 3     | 5–6    | Web dashboard              | not started |
| 4     | 7–8    | Reliability                | not started |
| 5     | 9–10   | Notifications / advanced   | not started |
| 6     | 11–12  | Intelligence & polish      | not started |

---

## Phase 1 — Foundation (Months 1–2)

Goal: a tiny, clean, reliable starting point. Nothing fancy.

### Milestones

- [x] Repository structure
- [x] Initial FastAPI skeleton with a `/health` endpoint
- [x] One pytest test confirming the app boots
- [x] Docker / docker-compose
- [x] GitHub Actions CI (pytest)
- [x] Persistent project state files (ROADMAP, TODO, CHANGELOG, development log)

### Open Phase 1 tasks (small daily candidates)

These are intentionally rough. The actual order depends on discoveries:

- Configuration system (env vars + a small `Settings` object)
- Logging configuration (structured, single source of truth)
- SQLite database setup with SQLAlchemy + Alembic
- First database model (`MonitoredURL`)
- Basic health endpoint enhancement (DB ping)
- First real test for an endpoint
- Improved `README.md` after the first real endpoint exists
- First GitHub Issue tracker entry
- Pre-commit hooks (ruff, black)
- Better error handling for the health endpoint

---

## Phase 2 — Monitoring engine (Months 3–4)

Sketch only — will be filled in as Phase 1 progresses.

- URL creation / management (CRUD)
- HTTP fetcher with timeouts
- Content hashing (sha256)
- Check history records
- A scheduler that runs checks periodically
- Graceful error handling on the fetcher

---

## Phase 3 — Web dashboard (Months 5–6)

- Minimal HTML / server-rendered dashboard (no SPA framework to start)
- URL list, status indicators, URL detail page
- Check history view
- Change history view
- Pagination and basic filtering

---

## Phase 4 — Reliability (Months 7–8)

- Retry / backoff
- Failure handling
- DB cleanup / retention
- Security review
- Backup strategy
- Tests expanded

---

## Phase 5 — Notifications & advanced monitoring (Months 9–10)

- Email notifications (SMTP)
- Telegram / Discord (if appropriate)
- Keyword monitoring
- Element-level monitoring
- Notification preferences

---

## Phase 6 — Intelligence & polish (Months 11–12)

- AI-generated change summaries
- Search across history
- Analytics
- UI polish
- Documentation pass
- Deployment improvements
- Final cleanup

---

## Weekly planning

Once per week, review the development log and the open tasks above. Break the
next milestone into 5–7 small daily tasks and store them in `TODO.md`.

## How to use this roadmap

- Do **not** rigidly implement the months in order if reality suggests otherwise.
- After every meaningful milestone, update the status checkboxes above.
- Keep it readable: this is the project's external long-term memory.
