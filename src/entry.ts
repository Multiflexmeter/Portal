import { createServer } from "http";

const pid = process.pid;

const server = createServer((req, res) => {
  res.write(`Hello from ${pid}`);
  return res.end();
});

server.listen(process.env.PORT || 3000);