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

---Notifies the player with a message.
---@param player player the server id of the player
---@param message string the message to notify the player with
---@param type string the type of the notification
function SV_QBCore.Functions.Notify(player, message, type) end

---@class SV_QBCore.Player
local SV_Player = {}

---@class SV_QBCore.Player.Functions
SV_Player.Functions = {}

---Removes the given amount of money from the given account of the player.
---@param account string the name of the account
---@param amount integer the amount of money to remove
---@param reason string? the reason for removing the money
---@return boolean success (I guess. There is no information given, except that it dose return a boolean. This documentation is BAD!)
function SV_Player.Functions.RemoveMoney(account, amount, reason) end


---@class SV_QBCore.Player.PlayerData
SV_Player.PlayerData = {}

---@type string a unique identifier for the player
SV_Player.PlayerData.citizenid = ""

---@class SV_QBCore.Player.PlayerData.job
SV_Player.PlayerData.job = {}

---@type string the name of the job
SV_Player.PlayerData.job.name = ""

---@class SV_QBCore.Player.PlayerData.accounts
SV_Player.PlayerData.accounts = {}

---@type integer the amount of money in the bank account
SV_Player.PlayerData.accounts.bank = 0

---@type integer the amount of money in the cash account
SV_Player.PlayerData.accounts.cash = 0

---@type integer the amount of money in the crypto account
SV_Player.PlayerData.accounts.crypto = 0


---@class CL_QBCore
CL_QBCore = {}

---@class CL_QBCore.Functions
CL_QBCore.Functions = {}

---Triggers a server callback with the given name and arguments.
---@param name string the name of the callback
---@param cb fun(...: any) the callback function
---@vararg any the arguments for the callback
function CL_QBCore.Functions.TriggerCallback(name, cb, ...) end