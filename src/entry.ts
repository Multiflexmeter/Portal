import { createServer } from "http";

const pid = process.pid;

const server = createServer((req, res) => {
  res.write(`Hello from ${pid}`);
  return res.end();
});

server.listen(8080);