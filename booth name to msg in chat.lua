for i, v in pairs(game.Players:GetChildren()) do 
    v.Chatted:Connect(function(m)
        local args = {
        [1] = v.Name .. ": " .. m,
        [2] = "booth"
    }
    game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
    end)
end
