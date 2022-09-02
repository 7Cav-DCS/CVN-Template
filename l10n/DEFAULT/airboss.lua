-- Create AIRBOSS object.
local AirbossWashington=AIRBOSS:New("CVN-73", "USS Washington")

-- Set Frequencies, TACAN, ICLS
AirbossWashington:SetTACAN("73", "X", "WSH")
AirbossWashington:SetLSORadio("234.000")
AirbossWashington:SetMarshalRadio("235.000")
AirbossWashington:SetICLS("11", "WSH")

-- Add recovery windows:
-- Case I from 9 to 10 am. Carrier will turn into the wind 5 min before window opens and go at a speed so that wind over the deck is 25 knots.
local window1=AirbossWashington:AddRecoveryWindow("9:00",  "10:00", 1, nil, true, 25)
-- Case II with +15 degrees holding offset from 15:00 for 60 min.
local window2=AirbossWashington:AddRecoveryWindow("15:00", "16:00", 2, 15)
-- Case III with +30 degrees holding offset from 21:00 to 23:30.
local window3=AirbossWashington:AddRecoveryWindow("21:00", "23:30", 3, 30)

-- Soundfiles
AirbossWashington:SetSoundfilesFolder("Airboss Soundfiles/")


-- Start airboss class.
AirbossWashington:Start()