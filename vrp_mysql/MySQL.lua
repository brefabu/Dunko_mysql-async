local MySQLSync = module("mysql-async", "lib/MySQL")

local MySQL = {}

function MySQL.createCommand(name, command)
  if not exports.vrp_mysql:checkCommand(name) then
    exports.vrp_mysql:registerCommand(name, command)
  else
    print("^1MySQL: error the command "..name.." does exist already.^0")
  end
end

function MySQL.execute(name, args, cb)
  MySQLSync.ready(function()
    if exports.vrp_mysql:checkCommand(name) then
        local args2 = {}
        if args then
            for k, v in pairs(args) do
                args2['@'..k] = v
            end
        end
        MySQLSync.Sync.execute(exports.vrp_mysql:getCommand(name), args2)
        if cb then
            local task = Task(cb)
            task({})
        end
    else
      print("^1MySQL: error the command "..name.." doesn't exist.^0")
    end
  end)
end

function MySQL.query(name, args, cb)
  MySQLSync.ready(function()
    if exports.vrp_mysql:checkCommand(name) then
      local args2 = {}
      if args then
          for k, v in pairs(args) do
              args2['@'..k] = v
          end
      end
      if cb then
          local task = Task(cb)
          local rws = MySQLSync.Sync.fetchAll(exports.vrp_mysql:getCommand(name), args2)
          task({rws})
      else
        MySQLSync.Sync.execute(exports.vrp_mysql:getCommand(name), args2)
      end
    else
      print("^1MySQL: error the command "..name.." doesn't exist.^0")
    end
  end)
end

return MySQL