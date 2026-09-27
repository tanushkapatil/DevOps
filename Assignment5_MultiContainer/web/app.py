import os
from flask import Flask
import redis

app = Flask(__name__)
cache = redis.Redis(host=os.environ.get("REDIS_HOST", "redis"),
                    port=int(os.environ.get("REDIS_PORT", 6379)))


@app.route("/")
def index():
    visits = cache.incr("visits")
    name = os.environ.get("APP_NAME", "Multi-Container App")
    return f"<h1>{name}</h1><p>This page has been visited {visits} times.</p>"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
