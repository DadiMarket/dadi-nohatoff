--  __    __   ______         __    __   ______  ________         ______   ________  ________                                                                  
-- |  \  |  \ /      \       |  \  |  \ /      \|        \       /      \ |        \|        \                                                                 
-- | $$\ | $$|  $$$$$$\      | $$  | $$|  $$$$$$\\$$$$$$$$      |  $$$$$$\| $$$$$$$$| $$$$$$$$                                                                 
-- | $$$\| $$| $$  | $$      | $$__| $$| $$__| $$  | $$         | $$  | $$| $$__    | $$__                                                                     
-- | $$$$\ $$| $$  | $$      | $$    $$| $$    $$  | $$         | $$  | $$| $$  \   | $$  \                                                                    
-- | $$\$$ $$| $$  | $$      | $$$$$$$$| $$$$$$$$  | $$         | $$  | $$| $$$$$   | $$$$$                                                                    
-- | $$ \$$$$| $$__/ $$      | $$  | $$| $$  | $$  | $$         | $$__/ $$| $$      | $$                                                                       
-- | $$  \$$$ \$$    $$      | $$  | $$| $$  | $$  | $$          \$$    $$| $$      | $$                                                                       
--  \$$   \$$  \$$$$$$        \$$   \$$ \$$   \$$   \$$           \$$$$$$  \$$       \$$                                                                       

--====================================================================================================================================================--
if Dadi.enableHatFunctionality then
    local isHatFunctionalityEnabled = true

    Citizen.CreateThread(function()
        while true do
            local playerPed = PlayerPedId()
            if isHatFunctionalityEnabled then
                SetPedCanLosePropsOnDamage(playerPed, false, 0)
            end
            Citizen.Wait(Dadi.delay)
        end
    end)

    RegisterCommand(Dadi.command, function(source, args, rawCommand)
        isHatFunctionalityEnabled = not isHatFunctionalityEnabled

        if isHatFunctionalityEnabled then
            print("Hat functionality enabled.")
        else
            print("Hat functionality disabled.")
        end
    end)
else
    print("Hat functionality is disabled.")
end