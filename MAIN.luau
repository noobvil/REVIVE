local HttpGet = game.HttpGet
local GameId: number = game.GameId

local Games: {[number]: string} = loadstring(
  HttpGet(game, "https://raw.githubusercontent.com/noobvil/REVIVE/main/GameList.luau")
)() :: any

local URL: string? = Games[GameId]
if not URL then return end

loadstring(HttpGet(game, URL))()

loadstring(game:HttpGet("https://github.com/noobvil/REVIVE/raw/refs/heads/main/UpdateLog.luau"))()
