--[[
    SHALL NOT BE USED DURING RUNTIME

    This file contains the meta data for basic type checking and intellisense.
    It is created by Java3east and is allowed to be used in any project, without any restrictions.
    It dosn't add any functionality to any resource, it is only used for type checking and intellisense.
    Not all natives are included, yet. It will be updated over time, as needed. Feel free to contribute.

    THIS REQUIRES THE LUA LANGUAGE SERVER TO WORK PROPERLY
]]

---@meta


---@class Array<T> : {[integer]: T}

---@class Dictionary<K, V> : {[K]: V}

---@class vector3
---@field x number
---@field y number
---@field z number

---@class vector4 : vector3
---@field w number

---@class hash          : integer
---@class entity        : integer
---@class long          : integer
---@class hex           : integer
---@class cam           : integer
---@class blip          : integer
---@class checkpoint    : integer
---@class player        : integer
---@class jsonString    : string
---@class URL           : string
---@class base64        : string
---@class HTML          : string
---@class vehicle       : entity
---@class ped           : entity
---@class object        : entity



--[[
    ANNOTATION TYPES
]]

---@class SERVER_ONLY
---@class CLIENT_ONLY