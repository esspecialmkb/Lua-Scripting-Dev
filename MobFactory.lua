--local killbot = game.ServerStorage.Models.DroolingZombie:clone()--Replace Zombie with the name of your model
local FloorB_Zone = { CFrame.new(-243,-13,173), CFrame.new(-215,-13,187) }

function countKillbots()
	-- gets the number of killbots in the map
	local count = 0
	local list = game.Workspace.Mobs:children()
	for i=1,#list do
		if (list[i].Name == "DroolingZombie")  then 
			count = count + 1 end--Same here, leave the "s
	end
	print(count)
	return count
end

--Use this function to create new mobs
function createKillbot()
	--   (-268,-165)
	local x = math.random(-243,-215)
	local y = -14 
	--   (128,199) 
	local z = math.random(173,187)--Defines where the models will spawn

	--local newbot = killbot:clone()
	local newbot = game.ServerStorage.Models.DroolingZombie:clone()

	newbot.Parent = game.Workspace.Mobs
	newbot.HumanoidRootPart.CFrame = CFrame.new(x,y,z) -- little hack a little necessary
	newbot:move(Vector3.new(x,y,z))


end


-- try to keep 3 - 10 killbots in the map - more might lag?
while true do

	local count = countKillbots()
	
	if (count < 5) then createKillbot() end--How many do you want?
 
	wait(.5)
	


end