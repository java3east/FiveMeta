--[[
    SHALL NOT BE USED DURING RUNTIME

    This file contains the meta data for the fxmanifest.lua
    It is created by Java3east and is allowed to be used in any project, without any restrictions.
    It dosn't add any functionality to any resource, it is only used for type checking and intellisense.
    Not all natives are included, yet. It will be updated over time, as needed. Feel free to contribute.

    THIS REQUIRES THE LUA LANGUAGE SERVER TO WORK PROPERLY
]]

---@meta

---@param str string
fx_version = function(str) end

---@type fun(version: string)
resource_manifest_version = nil

---@type fun(...:string)
data_file = nil

---@param str string
game = function(str) end

---@param games Array<string>
games = function(games) end

---@param name string
name = function(name) end

---@param author string
author = function (author) end

---@param description string
description = function(description) end

---@param version string
version = function(version) end

---@type fun(script: string)
client_script = nil

---@type fun(script: string)
server_script = nil

---@type fun(script: string)
shared_script = nil

---@type fun(scripts: Array<string>)
client_scripts = nil

---@type fun(scripts: Array<string>)
server_scripts = nil

---@type fun(scripts: Array<string>)
shared_scripts = nil

---@type fun(path: string)
ui_page = nil

---@type fun(files: Array<string>)
files = nil

---@type fun(dependency: string)
dependency = nil

---@type fun(dependencies: Array<string>)
dependencies = nil

---@type fun(resource: string)
provide = nil

---@param str string
lua54 = function(str) end

---Local player object
LocalPlayer = {}

---Local player statebags
---@class PLAYER_STATE
LocalPlayer.state = {}

---@class GlobalState
GlobalState = {}