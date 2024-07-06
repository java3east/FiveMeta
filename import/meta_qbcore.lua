--[[
    SHALL NOT BE USED DURING RUNTIME

    This file contains the meta data for qbcore functions.
    It is created by Java3east and is allowed to be used in any project, without any restrictions.
    It dosn't add any functionality to any resource, it is only used for type checking and intellisense.
    Not all natives are included, yet. It will be updated over time, as needed. Feel free to contribute.

    THIS REQUIRES THE LUA LANGUAGE SERVER TO WORK PROPERLY
]]

---@meta

--[[
    THE FOLLOWING INFORMATION GOT EXTRACTED FROM THE QBCore DOCUMENTATION,
    AND HAS BEEN CORRECTED / CHANGED WITH INFORMATION EXTRACTED FROM THE
    RESOURCE IT SELF.
]]


exports['qb-core'] = {}

---Returns the core object of the qb-core resource.
---@nodiscard
---@return SV_QBCore|CL_QBCore core the core object
exports['qb-core'].GetCoreObject = function() end

---@class SV_QBCore
SV_QBCore = {}

---@class SV_QBCore.Functions
SV_QBCore.Functions = {}

---Returns the player object of the player with the given server id.
---@nodiscard
---@param serverId player the server id of the player
---@return SV_QBCore.Player player the player object
function SV_QBCore.Functions.GetPlayer(serverId) end

---Creates a new server callback.
---@param name string the name of the callback
---@param cb fun(source: player, cb: fun(...), ...: any) the callback function
function SV_QBCore.Functions.CreateCallback(name, cb) end

---@class SV_QBCore.Player
local SV_Player = {}

---@class SV_QBCore.Player.PlayerData
SV_Player.PlayerData = {}

---@type string a unique identifier for the player
SV_Player.PlayerData.citizenid = ""

---@class SV_QBCore.Player.PlayerData.job
SV_Player.PlayerData.job = {}

---@type string the name of the job
SV_Player.PlayerData.job.name = ""


---@class CL_QBCore
CL_QBCore = {}