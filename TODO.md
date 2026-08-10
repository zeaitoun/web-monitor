# TODO

The next small tasks. Keep this list short — a few days ahead at most.

Each item should be small enough to be completed in a single daily run
(roughly 15–60 minutes of implementation effort).

---

## Immediate next (next ~5–7 daily runs)

These are intentionally the smallest useful improvements that move the
project forward without overcommitting.

1. [ ] Add a `Settings` / configuration module that reads from environment
   variables (database URL, app name, log level, etc.). Pydantic `BaseSettings`
   is fine. Add one test that verifies the defaults load.
2. [ ] Add structured logging configuration (single `logging.config.dictConfig`
   call at startup). Include timestamp, level, logger name. One test confirming
   the logger emits an INFO record.
3. [ ] Add SQLAlchemy + Alembic. Wire SQLite as the default. No migrations
   yet — just the empty engine and a `get_db` dependency.
4. [ ] Add the first model: `MonitoredURL` (id, url, created_at, updated_at,
   is_active). One test creating and reading it back through SQLAlchemy.
5. [ ] Create the first Alembic migration for `MonitoredURL`.
6. [ ] Add a `POST /urls` endpoint that creates a `MonitoredURL` from JSON.
   One test for the happy path and one test for invalid input.
7. [ ] Improve `/health` so it also pings the database and reports the DB
   version. One test.

When all 7 are done, we move to "Monitoring engine" — see `ROADMAP.md`.

---

## Backlog (later phases, not yet scheduled)

- HTTP fetcher with timeouts
- Content hashing (sha256) of fetched pages
- `Check` history model
- Scheduler (APScheduler or external cron)
- Dashboard templates
- Email notifications
- AI summarization

These are intentionally **not** scheduled yet. They will move into the
"Immediate next" list when the foundation is mature.

---

## Notes for future runs

- Read `docs/development-log.md` before starting to confirm what the
  previous run actually committed.
- Read the most recent entries in `CHANGELOG.md` for context.
- If something is broken, fix it before adding new features.
- Never mark a task as done until the relevant tests pass.
