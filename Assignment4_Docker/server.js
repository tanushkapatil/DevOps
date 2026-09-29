const express = require("express");
const os = require("os");

const app = express();
const PORT = process.env.PORT || 3000;
const APP_ENV = process.env.APP_ENV || "local";

app.use(express.json());
app.use(express.static("public"));

const tasks = [
  { id: 1, title: "Write Dockerfile", done: true },
  { id: 2, title: "Build Docker image", done: true },
  { id: 3, title: "Run container", done: false },
];

app.get("/api/health", (req, res) => {
  res.json({ status: "UP", environment: APP_ENV, host: os.hostname() });
});

app.get("/api/tasks", (req, res) => res.json(tasks));

app.post("/api/tasks", (req, res) => {
  const task = { id: tasks.length + 1, title: req.body.title, done: false };
  tasks.push(task);
  res.status(201).json(task);
});

app.listen(PORT, () => {
  console.log(`Student Task Tracker running on port ${PORT} (env: ${APP_ENV})`);
});
