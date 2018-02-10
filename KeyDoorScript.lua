local function OnCardTouch(Hit)
	local Real = Hit:FindFirstChild("Real")-- searches for the Real humanoid
	if Real then --checks if Real is there
		--script.Parent.Parent.Light.brickColor = BrickColor.new("Bright green")
		script.Parent.Parent.Door.CanCollide = false
		script.Parent.Parent.Door.Transparency = 0.1
		wait(1.5)
		--script.Parent.Parent.Light.brickColor = BrickColor.new("Bright red")
		script.Parent.Parent.Door.CanCollide = true
		script.Parent.Parent.Door.Transparency = 1
	end
end

--test
script.Parent.Touched:connect(OnCardTouch)