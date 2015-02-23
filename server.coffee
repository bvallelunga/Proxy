config = require "./config"
carbon = require "carbon"
proxy = carbon.listen config.port
table = []

for domain, port of config.proxy_table
  table.push
    hostname: domain
    port: port

proxy.use carbon.proxyTable table
