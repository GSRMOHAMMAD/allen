function bot(msg)
 return [[Optima Bot 
A Telegram bot based on lua and dev by allwen 🔥

for other information /optima ! 📑]]
end

function server(msg)
 return [[Server Information:
 cpu: celeron 2.0mhz
 ram: 1gp
 hdd: 100gb
 port: 1mb/s
 ]]
end

function run(msg, matches)
 if matches[1] == "bot" then
  bot(msg)
 elseif matches[1] == "server" then
  return server(msg)
 else
  return "error!\nYou can only use 'ver bot' or 'ver server'"
 end
end

return {
 description = "version",
 usage = {
  "ver bot : view bot version",
  "ver server : server about",
 },
 patterns = { 
  "^[Vv]er (.*)$",
  "^[Vv]ersion (.*)$",
 },
 run = run,
}
