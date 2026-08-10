# syntax=docker/dockerfile:1.7

FROM python:3.11-slim AS base

# Sane production defaults
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

WORKDIR /app

# System deps kept minimal. Add build tools only if a wheel needs them.
RUN apt-get update \
 && apt-get install -y --no-install-recommends curl \
 && rm -rf /var/lib/apt/lists/*

# Install Python dependencies first to maximize layer cache.
COPY pyproject.toml ./
COPY app ./app
RUN pip install --no-cache-dir ".[dev]"

# Non-root user for runtime.
RUN useradd --create-home --uid 10001 webmonitor \
 && chown -R webmonitor:webmonitor /app
USER webmonitor

EXPOSE 8000

# Lightweight container-level healthcheck.
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl -fsS http://localhost:8000/health || exit 1

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
