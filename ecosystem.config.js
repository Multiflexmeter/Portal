module.exports = {
  apps : [{
    name      : "portal-api",
    script    : "dist/entry.js",
    instances : "max",
    exec_mode : "cluster"
  }]
}