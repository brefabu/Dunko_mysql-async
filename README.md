# vRP-MySQL-Async

A basic adaptation to MySQL-Async for old vRP (DUNKO).

* Tutorial

1. Delete from `vrp/base.lua` these lines:
```lua
MySQL.debug = config.debug

-- open MySQL connection
MySQL.createConnection("vRP", config.db.host,config.db.user,config.db.password,config.db.database)
```

2. Delete from `vrp/cfg/base.lua` these lines:
```lua
cfg.db = {
  host = "127.0.0.1", -- database ip (default is local)
  database = "vrpfx",   -- name of database
  user = "root",    --  database username
  password = ""   -- password of your database
}
```

3. Go to your `server.cfg` and add this line:
```cfg
set mysql_connection_string "server=localhost;database=vrp;userid=root;password="\
```

4. Then change it by your db configuration.

5. Enjoy it!
