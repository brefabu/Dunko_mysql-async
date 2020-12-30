# Dunko MySQL-ASync

A basic adaptation of MySQL-Async for vRPold (DUNKO).

* Just Plug In
* Easy to use
* No modifications needed
* Faster than any other dbdriver
* Cannot be used with any other versions of MySQL-ASync

## Tutorial RO

> Daca aveti deja aceste resurse in scripturile voastre va trebui sa le redenumiti sau sa le stergeti.( ! Doar pentru `vrp_mysql` ! )

> Aceste doua linii vor fi puse inainte de `start vrp` in `server.cfg`.

```lua
start mysql-async
start vrp_mysql
```

> Se vor sterge din `vrp/base.lua` aceste linii:

```lua
MySQL.debug = config.debug
```

```lua
-- open MySQL connection
MySQL.createConnection("vRP", config.db.host,config.db.user,config.db.password,config.db.database)
```

> Se vor sterge din `vrp/cfg/base.lua` aceste linii:

```lua
cfg.db = {
  host = "127.0.0.1", -- database ip (default is local)
  database = "vrpfx",   -- name of database
  user = "root",    --  database username
  password = ""   -- password of your database
}
```
> Configuram in `server.cfg` cu detalii bazei noastre de date:

```cfg
set mysql_connection_string "server=localhost;database=vrp;userid=root;password="
```

## Tutorial EN

> If you already have these resources in your server, delete them or rename them. ( ! just for `vrp_mysql` ! )

> These to lines will be written before `start vrp` in `server.cfg`.

```lua
start mysql-async
start vrp_mysql
```

> These lines will be deleted from `vrp/base.lua`:

```lua
MySQL.debug = config.debug
```

```lua
-- open MySQL connection
MySQL.createConnection("vRP", config.db.host,config.db.user,config.db.password,config.db.database)
```

> These lines will be deleted form `vrp/cfg/base.lua`:

```lua
cfg.db = {
  host = "127.0.0.1", -- database ip (default is local)
  database = "vrpfx",   -- name of database
  user = "root",    --  database username
  password = ""   -- password of your database
}
```
> In `server.cfg` you will configure with your db details:

```cfg
set mysql_connection_string "server=localhost;database=vrp;userid=root;password="
```
