local HttpGet = game.HttpGet
local GameId = game.GameId

local Games = loadstring(HttpGet(game, "https://github.com/noobvil/REVIVE/raw/refs/heads/main/GameList.luau"))()

local URL = Games[GameId]
if not URL then return end

loadstring(HttpGet(game, URL))()

loadstring(game:HttpGet("https://github.com/noobvil/REVIVE/raw/refs/heads/main/UpdateLog.luau"))()
