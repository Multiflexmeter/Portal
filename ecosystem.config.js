module.exports = {
  apps : [{
    name      : "portal-api",
    script    : "dist/entry.js",
    instances : 2,
    exec_mode : "cluster"
  }]
}