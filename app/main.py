"""FastAPI application entry point.

This module is intentionally tiny. Real features arrive one at a time
over the course of the year — see ROADMAP.md.
"""

from fastapi import FastAPI

from app import __version__

app = FastAPI(
    title="Web Monitor",
    version=__version__,
    description="Self-hosted web monitoring application.",
)


@app.get("/health")
def health() -> dict[str, str]:
    """Liveness probe.

    Returns a tiny JSON payload. Later this will also report database
    reachability — see TODO.md.
    """
    return {"status": "ok", "version": __version__}
