local GameManager = {}

-- ROBLOX Services
local Players = game.Players

-- Local Variables
local IntermissionRunning = false
local EnoughPlayers = false
local GameRunning = false

-- Game Services
local TimeManager = require(script.TimeManager)

--functions
function GameManager:Initialize()
	--Prepate
end

function GameManager:RunIntermission()
	--Game lobby state
end

function GameManager:StopIntermission()
	--Stop game lobby
end

function GameManager:GameReady()
	return EnoughPlayers
end

function GameManager:StartRound()
	--Round start
end

function GameManager:Update()
	-- TODO: Add custom game code here
end

function GameManager:RoundOver()
	--Show end of round stats
end

function GameManager:RoundCleanup()
	--Clean up after current round
end

return GameManager
