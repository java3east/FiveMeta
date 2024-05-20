--[[
    SHALL NOT BE USED DURING RUNTIME

    This file contains the meta data for esx functions.
    It is created by Java3east and is allowed to be used in any project, without any restrictions.
    It dosn't add any functionality to any resource, it is only used for type checking and intellisense.
    Not all natives are included, yet. It will be updated over time, as needed. Feel free to contribute.

    THIS REQUIRES THE LUA LANGUAGE SERVER TO WORK PROPERLY
]]

---@meta

---@class ESX_PLAYER_STATE
LocalPlayer.state = {}
---@type string
LocalPlayer.state.identifier = ""

---@type string
LocalPlayer.state.license = ""

---@type ESX_JOB
LocalPlayer.state.job = {}

---@type string
LocalPlayer.state.group = ""

---@type string
LocalPlayer.state.name = ""

---*missing information*
---@type table
LocalPlayer.state.metadata = {}

---@class ESX_MATH
local Math = {}

---This function groups numbers, making them easier to understand by humans. Used in most nofications when money is showed, for example when buying a new car at the vehicle shop.
---@param number number the number to group
---@retrn string the grouped number
function Math.GroupDigits(number) end

---This function rounds a number to the given amount of decimals.
---@param number number the number to round
---@param decimals integer the amount of decimals to round to
function Math.Round(number, decimals) end

---This function trims a string, removing all trailing whitespaces. Often used when sanitizing the GetVehicleNumberPlateText() native.
---@param str string the string to trim
function Math.Trim(str) end

---@class ESX_BANK_ACCOUNT
local ESX_BANK_ACCOUNT = {}

---the account name
---@type string|"money"|"bank"|"black"
ESX_BANK_ACCOUNT.name = ""

---the amount of money on the account
---@type integer
ESX_BANK_ACCOUNT.money = 0

---the display name of the account
---@type string|"money"|"bank"|"black money"
ESX_BANK_ACCOUNT.label = ""

---@class ESX_PlayerData
local PlayerData = {}

---The players accounts
---@type Array<ESX_BANK_ACCOUNT>
PlayerData.accounts = {}

---The players coordinates
---@type {x: number, y: number, z:number} - vector3?
PlayerData.coords = { }
PlayerData.coords.x = 0.0
PlayerData.coords.y = 0.0
PlayerData.coords.z = 0.0

---The players identifier
---@type string
PlayerData.identifier = ""

---The players inventory
---@type Array<{name: string, label: string, count: integer}>
PlayerData.inventory = {}

---The players date of birth given in the following format `MM/DD/YYYY`
---@type string|"MM/DD/YYYY"
PlayerData.dateofbirth = "MM/DD/YYYY"

---The players first name
---@type string
PlayerData.firstName = ""

---The players last name
---@type string
PlayerData.lastName = ""

---The players height in centimeters
---@type integer
PlayerData.height = 0

---The amount of money the player has in his pocket (cash)
---@type integer
PlayerData.money = 0

---The players name
---@type string
PlayerData.name = ""

---The players sex
---@type "m"|"f"
PlayerData.sex = "m" --"m" or "f"

---The players loadout {[weapon_name]: ammo_count}
---@type Dictionary<string, integer>
PlayerData.loadout = {}

---The players job
---@class ESX_JOB
PlayerData.job = {}

---The players job display name
---@type string
PlayerData.job.label = ""

---The players job name
---@type string
PlayerData.job.name = ""

---The players job grade id
---@type integer
PlayerData.job.grade = 0

---The players job grade name
---@type string
PlayerData.job.grade_name = ""

---@class ESX_VEHICLE_PROPERTIES
---@field model hash
---@field plate string
---@field plateIndex integer
---@field bodyHealth number -- missing: range; integer?
---@field engineHealth number -- missing: range; integer?
---@field tankHealth number -- missing: range; integer?
---@field fuelLevel number -- missing: range; integer?
---@field dirtLevel number -- missing: range; integer?
---@field color1 integer
---@field color2 integer
---@field pearlescentColor integer
---@field wheelColor integer
---@field dashboardColor integer
---@field interiorColor integer
---@field wheels integer
---@field windowTint integer
---@field neonEnabled {[1]: boolean, [2]: boolean, [3]: boolean, [4]: boolean}
---@field neonColor {r: integer, g: integer, b: integer}
---@field extras Dictionary<integer, boolean>
---@field tireSmokeColor {r: integer, g: integer, b: integer}
---@field modSpoilers integer
---@field modFrontBumper integer
---@field modRearBumper integer
---@field modSideSkirt integer
---@field modExhaust integer
---@field modFrame integer
---@field modGrille integer
---@field modHood integer
---@field modFender integer
---@field modRightFender integer
---@field modRoof integer
---@field modEngine integer
---@field modBrakes integer
---@field modTransmission integer
---@field modHorns integer
---@field modSuspension integer
---@field modArmor integer
---@field modTurbo boolean
---@field modSmokeEnabled boolean
---@field modXenon boolean
---@field modFrontWheels integer
---@field modBackWheels integer
---@field modPlateHolder integer
---@field modVanityPlate integer
---@field modTrimA integer
---@field modOrnaments integer
---@field modDashboard integer
---@field modDial integer
---@field modDoorSpeaker integer
---@field modSeats integer
---@field modSteeringWheel integer
---@field modShifterLeavers integer
---@field modAPlate integer
---@field modSpeakers integer
---@field modTrunk integer
---@field modHydrolic integer
---@field modEngineBlock integer
---@field modAirFilter integer
---@field modStruts integer
---@field modArchCover integer
---@field modAerials integer
---@field modTrimB integer
---@field modTank integer
---@field modWindows integer
---@field modLivery integer


---@class ESX_VEHICLE_OPTIONAL_PROPERTIES
---@field plate string?
---@field plateIndex integer?
---@field bodyHealth number? -- missing: range; integer?
---@field engineHealth number? -- missing: range; integer?
---@field tankHealth number? -- missing: range; integer?
---@field fuelLevel number? -- missing: range; integer?
---@field dirtLevel number? -- missing: range; integer?
---@field color1 integer?
---@field color2 integer?
---@field pearlescentColor integer?
---@field wheelColor integer?
---@field dashboardColor integer?
---@field interiorColor integer?
---@field wheels integer?
---@field windowTint integer?
---@field neonEnabled {[1]: boolean, [2]: boolean, [3]: boolean, [4]: boolean}?
---@field neonColor {r: integer, g: integer, b: integer}?
---@field extras Dictionary<integer, boolean>?
---@field tireSmokeColor {r: integer, g: integer, b: integer}?
---@field modSpoilers integer?
---@field modFrontBumper integer?
---@field modRearBumper integer?
---@field modSideSkirt integer?
---@field modExhaust integer?
---@field modFrame integer?
---@field modGrille integer?
---@field modHood integer?
---@field modFender integer?
---@field modRightFender integer?
---@field modRoof integer?
---@field modEngine integer?
---@field modBrakes integer?
---@field modTransmission integer?
---@field modHorns integer?
---@field modSuspension integer?
---@field modArmor integer?
---@field modTurbo boolean?
---@field modSmokeEnabled boolean?
---@field modXenon boolean?
---@field modFrontWheels integer?
---@field modBackWheels integer?
---@field modPlateHolder integer?
---@field modVanityPlate integer?
---@field modTrimA integer?
---@field modOrnaments integer?
---@field modDashboard integer?
---@field modDial integer?
---@field modDoorSpeaker integer?
---@field modSeats integer?
---@field modSteeringWheel integer?
---@field modShifterLeavers integer?
---@field modAPlate integer?
---@field modSpeakers integer?
---@field modTrunk integer?
---@field modHydrolic integer?
---@field modEngineBlock integer?
---@field modAirFilter integer?
---@field modStruts integer?
---@field modArchCover integer?
---@field modAerials integer?
---@field modTrimB integer?
---@field modTank integer?
---@field modWindows integer?
---@field modLivery integer?

---@class ESX_SKIN
local ESX_SKIN = {}

---**CLIENT ONLY**<br>Triggered when an item is added to the players inventory
---@param event "esx:addInventoryItem"
---@param func fun(item: string, count: integer)
function RegisterNetEvent(event, func) end

---**CLIENT ONLY**<br>Triggered when the player is opening or closing the pause menu
---@param event "esx:pauseMenuActive"
---@param func fun(active: boolean)
function RegisterNetEvent(event, func) end

---**CLIENT ONLY**<br>Triggered when the player has loaded
---@param event "esx:playerLoaded"
---@param func fun(playerData: ESX_PlayerData, isNew: boolean, skin: ESX_SKIN)
function RegisterNetEvent(event, func) end

---**CLIENT ONLY**<br>Triggered when the players account money changes
---@param event "esx:setAccountMoney"
---@param func fun(account: {name: 'money'|'black'|'bank', money: integer, label: string})
function RegisterNetEvent(event, func) end

---**CLIENT ONLY**<br>Triggered when a notification should be shown from the server
---@param event "esx:showAdvancedNotification"
---@param func fun(title: string, subject: string, msg: string, icon: string|'CHAR_AMMUNATION', iconType: integer)
function RegisterNetEvent(event, func) end

---**CLIENT ONLY**<br>This event shows a help notification with the parsed message.
---@param event "esx:showHelpNotification"
---@param func fun(msg: string)
function RegisterNetEvent(event, func) end

---**CLIENT ONLY**<br>Triggered when showing a notification to the player
---@param event "esx:showNotification"
---@param func fun(msg: string, time: integer?, type: string|'info'|'success'|'error'?)
function RegisterNetEvent(event, func) end

---This event is triggered when the player entered the vehicle
---@param event "esx:enteredVehicle"
---@param func fun(vehicle: vehicle, plate: string, seat: integer, displayName: string, netID: integer)
function RegisterNetEvent(event, func) end

---This event is triggered when the player entering the vehicle
---@param event "esx:enteringVehicle"
---@param func fun(vehicle: vehicle, plate: string, seat: integer, netID: integer)
function RegisterNetEvent(event, func) end

---This event is triggered when the player aborted vehicle enter
---@param event "esx:enteringVehicleAbort"
---@param func fun()
function RegisterNetEvent(event, func) end

---This event is triggered when the player exited the vehicle
---@param event "esx:exitedVehicle"
---@param func fun(vehicle: vehicle, plate: string, seat: integer, displayName: string, netID: integer)
function RegisterNetEvent(event, func) end

---This event is triggered, when a player dies
---@param event "esx:onPlayerDeath"
---@param func fun(data: {victimCoords: vector3, killerCoords: vector3, deathCause: hash, killedByPlayer: boolean, distance: number, killerServerId: integer, killerClientId: integer})
function RegisterNetEvent(event, func) end

---This event is triggered when the player is jumping
---@param event "esx:playerJumping"
---@param func fun()
function RegisterNetEvent(event, func) end

---Triggered when the player ped changed
---@param event "esx:playerPedChanged"
---@param func fun(playerPed: ped, netId: integer)
function RegisterNetEvent(event, func) end

---This event is triggered when the player has change his job
---@param event "esx:setJob"
---@param func fun(job: {id: integer, name: string, label: string, grade: integer, grade_label: string, salary: integer, skin_male: ESX_SKIN, skin_female: ESX_SKIN}, lastJob: {id: integer, name: string, label: string, grade: integer, grade_label: string, salary: integer, skin_male: ESX_SKIN, skin_female: ESX_SKIN})
function RegisterNetEvent(event, func) end

---**SERVER ONLY**<br>Triggered when a player left the server.
---@param event "esx:playerDropped"
---@param func fun(player: player, reason: string)
function RegisterNetEvent(event, func) end

---**SERVER ONLY**<br>This event is triggered when the player has loaded to the server
---@param event "esx:playerLoaded"
---@param func fun(player: player, xPlayer: ESX_PLAYER, isNew: boolean)
function RegisterNetEvent(event, func) end

---**SERVER ONLY**<br>This event is triggered when the player has change any money/account
---@param event "esx:setAccountMoney"
---@param func fun(player: player, accountName: string|"money"|"bank"|"black_money", money: integer, reason: string)
function RegisterNetEvent(event, func) end

---@class CL_ESX : CLIENT_ONLY
---@field PlayerData ESX_PlayerData
---@field Game ESX_GAME_FUNCTIONS
---@field Scaleform ESX_SCALEFORM_FUNCTIONS
---@field Streaming ESX_STREAMING_FUNCTIONS
---@field UI ESX_UI_FUNCTIONS
---@field Math ESX_MATH
ESX = {}


---This function dumps the given table to a readable string with a tree structure.
---@param table table the table to dump
---@return string the dumped table
function ESX.DumpTable(table) end

---This function Returns the ESX config and its current values.
---@return Dictionary<string, any> config more exploration nesessary
function ESX.GetConfig() end

---This function gets a random string, with the defined length.
---@param length integer the length of the string
---@return string str the random string
function ESX.GetRandomString(length) end

---This function Returns The weapon and its full weapon name. (*Missing information!*)
function ESX.GetWeapon(weaponName) end

---This function returns the weapon component object for a weapon. Includes the component label, name and hash key. See the weapon config file for the available components. (*Missing information*)
function ESX.GetWeaponComponent(weaponName, weaponComponent) end

---This function returns the weapon label for a weapon.
---@param weaponName string the weapon name
---@return string label the weapon label
function ESX.GetWeaponLabel(weaponName) end

---This function gets the complete weapon list and label.
---@param byHash boolean if true the key will be the weapon hash, else it will be an index (Array)
---@return Dictionary<hash, {name: string, label: string}>|Array<{name: string, label: string}> weaponList the weapon list
function ESX.GetWeaponList(byHash) end

---**CLIENT ONLY**<br>Contains streaming related functions.
---@class ESX_STREAMING_FUNCTIONS
ESX.Streaming = {}

---**CLIENT ONLY**<br>Contains game related functions.
---@class ESX_GAME_FUNCTIONS
---@field Utils ESX_GAME_UTIL_FUNCTIONS
ESX.Game = {}

---**CLIENT ONLY**<br>Contains utility functions for the game.
---@class ESX_GAME_UTIL_FUNCTIONS
ESX.Game.Utils = {}

---**CLIENT ONLY**<br>Contains scaleform related functions.
---@class ESX_SCALEFORM_FUNCTIONS
---@field Utils ESX_SCALEFORM_UTIL_FUNCTIONS
ESX.Scaleform = {}

---**CLIENT ONLY**<br>Contains utility functions for the scaleform.
---@class ESX_SCALEFORM_UTIL_FUNCTIONS
ESX.Scaleform.Utils = {}

---**CLIENT ONLY**
---@class ESX_UI_FUNCTIONS
---@field HUD ESX_UI_HUD_FUNCTIONS
---@field Menu ESX_UI_MENU_FUNCTIONS
ESX.UI = {}

---**CLIENT ONLY**
---@class ESX_UI_HUD_FUNCTIONS
ESX.UI.HUD = {}

---**CLIENT ONLY**
---@class ESX_UI_MENU_FUNCTIONS
ESX.UI.Menu = {}

---**CLIENT ONLY**<br>Deletes the given object from the world.
---@param  object object the object to delete   
function ESX.Game.DeleteObject(object) end

---**CLIENT ONLY**<br>Deletes the given vehicle from the world.
---@param vehicle vehicle the vehicle to delete
function ESX.Game.DeleteVehicle(vehicle) end

---This function returns the closest Entity handle, and distance to the Entity.
---@param coords vector3? the coordinates to search from, if not given, player coordinates will be used.
---@param modelFilter Dictionary<hash, boolean>? a dictionary with the model hashes as keys and a boolean as value, if true, the model will be included in the search. If not provied, every model will be included.
---@return entity entity the found entity
---@return number distance the distance to the entity
function ESX.Game.GetClosestEntity(coords, modelFilter) end

---**CLIENT ONLY**<br>This function returns the closest object handle, and distance to the object.
---@param coords vector3? the coordinates to search from, if not given, player coordinates will be used.
---@param modelFilter Dictionary<hash, boolean>? a dictionary with the model hashes as keys and a boolean as value, if true, the model will be included in the search. If not provied, every model will be included.
---@return object object the found object
---@return number distance the distance to the object
function ESX.Game.GetClosestObject(coords, modelFilter) end

---**CLIENT ONLY**<br>This function returns the closest ped handle, and distance to the ped.
---@param coords vector3? the coordinates to search from, if not given, player coordinates will be used.
---@param modelFilter Dictionary<hash, boolean>? a dictionary with the model hashes as keys and a boolean as value, if true, the model will be included in the search. If not provied, every model will be included.
---@return ped ped the found ped
---@return number distance the distance to the ped
function ESX.Game.GetClosestPed(coords, modelFilter) end

---**CLIENT ONLY**<br>This function returns the closest player handle, and distance.
---@return player player the players server id
---@return number distance the distance to the player
function ESX.Game.GetClosestPlayer() end

---**CLIENT ONLY**<br>This function returns the closest vehicle handle, and distance to the vehicle.
---@param coords vector3? the coordinates to search from, if not given, player coordinates will be used.
---@param modelFilter Dictionary<hash, boolean>? a dictionary with the model hashes as keys and a boolean as value, if true, the model will be included in the search. If not provied, every model will be included.
---@return vehicle vehicle the found vehicle
---@return number distance the distance to the vehicle
function ESX.Game.GetClosestVehicle(coords, modelFilter) end

---**CLIENT ONLY**<br>This function returns all objects currently loaded (in visual range) to the player.
---@return Array<object> objects all objects
function ESX.Game.GetObjects() end

---**CLIENT ONLY**<br>This function returns a mughsot, and a mugshot string for the given ped.<br>
---Make sure to delete the mugshot after using it with `UnregisterPedheadshot(mugshotId)`, since the game only allows 34 mugshots.
---@param ped ped the ped to get the mugshot from
---@return integer mugshotId the mugshot id
---@return base64 mugshotStr the base64 encoded mugshot
function ESX.Game.GetPedMugshot(ped) end

---**CLIENT ONLY**<br>This function returns all peds currently loaded (in visual range) to the player.
---@param onlyOtherPeds boolean? if true, only other peds (not the player) will be returned
---@return Array<ped> peds all peds
function ESX.Game.GetPeds(onlyOtherPeds) end

---**CLIENT ONLY**<br>This function returns all players currently loaded (in visual range) to the player.
---@param onlyOtherPlayers boolean? if true, only other players (not the player) will be returned
---@param returnKeyValue boolean? If set to true it will return in a key-value table where key is player client id and key being the ped handle. Otherwise it create a index-value table, with value being either the ped handle or client id depending on returnPeds
---@param returnPeds boolean? If set to true it will return the ped handle for that player, otherwise it will return the player client id
---@return Array<player>|Dictionary<player, ped>|Array<ped> players
function ESX.Game.GetPlayers(onlyOtherPlayers, returnKeyValue, returnPeds) end

---This function gets all players within the max distance of a coord.
---@param coords vector3? the coordinates to search from, if not given, player coordinates will be used.
---@param maxDistance number the max distance to search
---@return Array<player> players all players in the area **This is not tested, and the documentation is unclear of what it actually returns (the peds or the ids)**
function ESX.Game.GetPlayersInArea(coords, maxDistance) end

---**CLIENT ONLY**<br>This function gets the closest vehicle in the player's direction within 5 units, utilizes ray-casts.
---@return vehicle vehicle the found vehicle
function ESX.Game.GetVehicleInDirection() end

---**CLIENT ONLY**<br>This function returns the properties of a vehicle.
---@param vehicle vehicle the vehicle to get the properties from
---@return ESX_VEHICLE_PROPERTIES? properties the properties of the vehicle
function ESX.Game.GetVehicleProperties(vehicle) end

---**CLIENT ONLY**<br>This function returns all vehicles currently loaded (in visual range) to the player.
---@return Array<vehicle> vehicles all vehicles
function ESX.Game.GetVehicles() end

---**CLIENT ONLY**<br>This function gets all vehicles within the max distance of a coord.
---@param coords vector3? the coordinates to search from, if not given, player coordinates will be used.
---@param maxDistance number the max distance to search
---@return Array<vehicle> vehicles all vehicles in the area
function ESX.Game.GetVehiclesInArea(coords, maxDistance) end

---**CLIENT ONLY**<br>This function checks if the given area is clear of entities.
---@param coords vector3? the coordinates to check from, if not given, player coordinates will be used.
---@param maxDistance number the max distance to check
function ESX.Game.IsSpawnPointClear(coords, maxDistance) end

---**CLIENT ONLY**<br>This function checks if the given vehicle is empty of any players.
---@param vehicle vehicle the vehicle to check
---@return boolean empty if the vehicle is empty
function ESX.Game.IsVehicleEmpty(vehicle) end

---**CLIENT ONLY**<br>This function sets the properties of a vehicle.
---@param vehicle vehicle the vehicle to set the properties for
---@param properties ESX_VEHICLE_OPTIONAL_PROPERTIES the properties to set
function ESX.Game.SetVehicleProperties(vehicle, properties) end

---**CLIENT ONLY**<br>Spawns a local object in the world.
---@param model hash|string the model name or hash of the object
---@param coords vector3 the coordinates to spawn the object at
---@param cb fun(object: object)? a callback function that will be called when the object is spawned
function ESX.Game.SpawnLocalObject(model, coords, cb) end

---**CLIENT ONLY**<br>Spawns a local vehicle in the world.
---@param model hash|string the model name or hash of the vehicle
---@param coords vector3 the coordinates to spawn the vehicle at
---@param heading number the heading of the vehicle
---@param cb fun(vehicle: vehicle)? a callback function that will be called when the vehicle is spawned
function ESX.Game.SpawnLocalVehicle(model, coords, heading, cb) end

---**CLIENT ONLY**<br>Spawns an object in the world.
---@param model hash|string the model name or hash of the object
---@param coords vector3 the coordinates to spawn the object at
---@param cb fun(object: object)? a callback function that will be called when the object is spawned
function ESX.Game.SpawnObject(model, coords, cb) end

---**CLIENT ONLY**<br>Spawns a vehicle in the world.
---@param model hash|string the model name or hash of the vehicle
---@param coords vector3 the coordinates to spawn the vehicle at
---@param heading number the heading of the vehicle
---@param cb fun(vehicle: vehicle)? a callback function that will be called when the vehicle is spawned
function ESX.Game.SpawnVehicle(model, coords, heading, cb) end

---**CLIENT ONLY**<br>Teleports the given entity to the given coordinates.
---@param entity entity The entity to teleport
---@param coords vector3 The coordinates to teleport the entity to
---@param cb fun() a callback function that will be called when the entity is teleported
function ESX.Game.Teleport(entity, coords, cb) end

---**CLIENT ONLY**<br>This function draws 3D text on the specified coords. Must be drawn every frame.
---@param coords vector3 the coordinates to draw the text at
---@param text string the text to draw
---@param size number? the size of the text
---@param font number? the font of the text
---@param color {r: integer, g: integer, b: integer}? the color of the text
---@param distance number? the distance to draw the text
function ESX.Game.Utils.DrawText3D(coords, text, size, font, color, distance) end

---**CLIENT ONLY**<br>Returns the player data.
---@return ESX_PlayerData playerData the player data
function ESX.GetPlayerData() end

---**CLIENT ONLY**<br>Checks if the player has loaded.
---@return boolean loaded if the player has loaded
function ESX.IsPlayerLoaded() end

---**CLIENT ONLY**<br>Shows a progress bar.
---@param message string the message to show
---@param length integer the time in milliseconds
---@param options { FreezePlayer: boolean?, animation: { type: 'anim', dict: string, lib: string }|{type: 'Scenario', Scenario: string}?, onFinish: fun()?, onCancel: fun()? }? the options for the progress bar
function ESX.ProgressBar(message, length, options) end

---**CLIENT ONLY**<br>Shows a "breaking news" message to the player.
---@param title string the title text
---@param msg string|HTML the message text
---@param bottom string|HTML the footer text
---@param time integer time to show this message in seconds
function ESX.Scaleform.ShowBreakingNews(title, msg, bottom, time) end

---**CLIENT ONLY**<br>Shows a freemode message to the player.
---@param title string the title text
---@param msg string the message text
---@param time integer time to show the message in seconds
function ESX.Scaleform.ShowFreemodeMessage(title, msg, time) end

---**CLIENT ONLY**<br>Shows a popup warning to the player.
---@param title string the title text
---@param msg string the message text
---@param bottom string the footer text
---@param time integer time to show the message in seconds
function ESX.Scaleform.ShowPopupWarning(title, msg, bottom, time) end

---This function starts the traffic scaleform movie used in the campaign.
---@param time integer the time to show the movie in seconds
function ESX.Scaleform.ShowTrafficMovie(time) end

---**CLIENT ONLY**<br>This function requests and returns a scaleform handle for the movie parsed.
---@param scaleformName string the name of the scaleform movie [AVAILABLE SCALEFORMS](https://scaleform.devtesting.pizza/)
---@return integer scaleform the scaleform handle
function ESX.Scaleform.Utils.RequestScaleformMovie(scaleformName) end

---This function search inventory for the specified item and count.
---@param item string the item to search for
---@param count integer the count to search for
---@return boolean found if the item was found
function ESX.SearchInventory(item, count) end

---This function sets player data, this can Then be access with ESX.PlayerData[key]
---@param key string the key to set
---@param value any the value to set
function ESX.SetPlayerData(key, value) end

---This function shows an advanced notification.
---@param title string the title of the notification 
---@param subject string the subject of the notification
---@param msg string the message of the notification
---@param mugshot base64 the mugshot of the notification
---@param iconType integer the icon type of the notification
---@param flash boolean? if the notification should flash
---@param saveToBrief boolean? if the notification should be saved to Pause Menu > Help
---@param hudColorIndex integer? the hud color index of the notification [AVAILABLE COLORS](https://gyazo.com/68bd384455fceb0a85a8729e48216e15)
function ESX.showAdvancedNotification(title, subject, msg, mugshot, iconType, flash, saveToBrief, hudColorIndex) end

---This function shows a help notification with a message.
---@param msg string the message to show
---@param coords vector3 the coordinates to show the notification at
function ESX.ShowFloatingHelpNotification(msg, coords) end

---This function shows a help notification with a message.
---@param msg string the message to show
---@param thisFrame boolean? if the notification should only be shown this frame
---@param beep boolean? if the notification should beep
---@param duration integer? the duration to show the notification in milliseconds
function ESX.ShowHelpNotification(msg, thisFrame, beep, duration) end

---This function shows the inventory.
function ESX.ShowInventory() end

---Shows a notification to the player.
---@param msg string the message to show
---@param type 'info'|'success'|'error'? the type of the notification
---@param time integer? the time to show the notification in milliseconds
function ESX.ShowNotification(msg, type, time) end

---This function requests and returns the nimation directory parsed.
---@param dict string the animation dictionary to load
---@param cb fun() a callback function that will be called when the animation dictionary is loaded
function ESX.Streaming.RequestAnimDict(dict, cb) end

---This function requests and returns the animation set parsed.
---@param animSet string the animation set to load
---@param cb fun() a callback function that will be called when the animation set is loaded
function ESX.Streaming.RequestAnimSet(animSet, cb) end

---This function requests and returns the specified model parsed, a very common usage is spawning objects, etc.
---@param model hash|string the model to load
---@param cb fun() a callback function that will be called when the model is loaded
function ESX.Streaming.RequestModel(model, cb) end

---This function requests and returns the specified ptfx asset parsed.
---@param assetName string the asset name to load
---@param cb fun() a callback function that will be called when the asset is loaded
function ESX.Streaming.RequestNamedPtfxAsset(assetName, cb) end

---This function requests and returns the specified streamed texture dictionary parsed.
---@param textureDict string the texture dictionary to load
---@param cb fun() a callback function that will be called when the texture dictionary is loaded
function ESX.Streaming.RequestStreamedTextureDict(textureDict, cb) end

---This function requests and returns the specified weapon asset parsed.
---@param weaponHash hash the weapon hash to load
---@param cb fun() a callback function that will be called when the weapon asset is loaded
function ESX.Streaming.RequestWeaponAsset(weaponHash, cb) end

---This function triggers a server callback. See ESX.RegisterServerCallback on registering server callbacks.
---@param name string the name of the server callback
---@param cb fun(...) a callback function that will be called when the server callback is triggered
---@param ... any the arguments to pass to the server callback
function ESX.TriggerServerCallback(name, cb, ...) end

---This function shows an inventory item notification. *MISSING INFORMATION!*
---@param add any missing information (add / remove item? => boolean)
---@param item string the name of the item
---@param count integer the count of the item
function ESX.UI.ShowInventoryItemNotification(add, item, count) end

---This function registers a HUD element.
---@param name string missing information (probably the "name" attribute of the element)
---@param index integer missing information (probably the "index" attribute of the element)
---@param priority integer missing information
---@param html string html content? including the element?
---@param data any missing information (additional attributes, e.g. style?)
function ESX.UI.HUD.RegisterElement(name, index, priority, html, data) end

---This function removes a HUD element.
---@param name string the name of the element to remove
function ESX.UI.HUD.RemoveElement(name) end

---This function sets the HUD opacity.
---@param opacity number (0.0 - 1.0)
function ESX.UI.HUD.SetDisplay(opacity) end

---This function updates a HUD element.
---@param name string the name of the element to update (missing information)
---@param data any the data to update the element with (missing information)
function ESX.UI.HUD.UpdateElement(name, data) end

---This function closes a menu.
---@param type string|'default'
---@param namespace string the namespace of the menu (usually the resource name)
---@param name string the name of the menu
function ESX.UI.Menu.Close(type, namespace, name) end

---This function closes all menus.
function ESX.UI.Menu.CloseAll() end

---This function gets all opened menus. (Wrong docs? Probably no arguments at all)
---@param type string|'default'?
---@param namespace string? the namespace of the menu (usually the resource name)
---@param name string? the name of the menu
function ESX.UI.Menu.GetOpened(type, namespace, name) end

---This function checks if the given menu is open
---@param type string|'default'
---@param namespace string the namespace of the menu (usually the resource name)
---@param name string the name of the menu
function ESX.UI.Menu.IsOpen(type, namespace, name) end

---This function opens a menu.
---@param type string|'default' 
---@param namespace string the namespace of the menu (usually the resource name)
---@param name string the name of the menu
---@param data { title: string, align: string|"top-left"|"bottom-left"|"bottom-right"|"top-right", elements: Array<{label: string}> } 
---@param submit fun(data: any, menu: any) a callback function that will be called when the menu is submitted
---@param cancel fun(menu: any) a callback function that will be called when the menu is canceled
---@param chage fun(data: any, menu: any) a callback function that will be called when the menu is changed
---@param close fun(menu: any) a callback function that will be called when the menu is closed
function ESX.UI.Menu.Open(type, namespace, name, data, submit, cancel, chage, close) end

---This function registers a menu type.
---@param type string the type of the menu
---@param open fun(data: any, submit: fun(data: any, menu: any), cancel: fun(menu: any), chage: fun(data: any, menu: any), close: fun(menu: any)) a callback function that will be called when the menu is opened
---@param close fun(menu: any) a callback function that will be called when the menu is closed
function ESX.UI.Menu.RegisterType(type, open, close) end




---@class ESX_PLAYER
local Player = {}

---This function adds money the the given account of the player.
---@param account string|"bank"|"money"|"black_money" the account to add the money to
---@param money integer the amount of money to add
function Player.addAccountMoney(account, money) end

---This function adds an item to the players inventory.
---@param item string the name of the item
---@param count integer the amount of items to add
function Player.addInventoryItem(item, count) end

---Adds money to the players "money" account
---@param amount integer the amount of money to add
function Player.addMoney(amount) end

---This function adds a weapon to the players loadout.
---@param weaponName string the name of the weapon to add.
---@param ammo integer the ammo count the weapon should have.
function Player.addWeapon(weaponName, ammo) end

---Adds ammo to a weapon the player has.
---@param weaponName string the name of the weapon to add the ammo to.
---@param ammo integer the ammount of ammo to add.
function Player.addWeaponAmmo(weaponName, ammo) end

---Adds a weapon component to a weapon the player has.
---@param weaponName string the name of the weapon to add the component to
---@param weaponComponent string the name of the component to add
function Player.addWeaponComponent(weaponName, weaponComponent) end

---This function is used to determinate if a player can carry an item, and is the successor to the previous item limit checks
---@param item string the name of the item
---@param count integer the amount of items
function Player.canCarryItem(item, count) end

---This function is used to determinate if a player can swap an item for some other item.
---@param firstItem string the name of the first item
---@param firstCount integer the amount of the first item
---@param secondItem string the name of the second item
---@param secondCount integer the amount of the second item
function Player.canSwapItem(firstItem, firstCount, secondItem, secondCount) end

---clears the given meta data from the player
---@param index string|Array<string> the index or indexes to clear
function Player.clearMeta(index) end

---Returns the set metadata for the given index and subindex of the players metadata.
---@param index string the index of the metadata
---@param subIndex string the subindex of the metadata
---@return any meta the metadata
function Player.getMeta(index, subIndex) end

---Returns account data for the given account name.
---@param account "money"|"bank"|"black_money" the account name
---@return {name: string, money: integer, label: string} account the account data
function Player.getAccount(account) end

---This function gets all registered player accounts.
---@return Array<{name: string, money: integer, label: string}> accounts
function Player.getAccounts() end

---This function returns the player's current coordinates on the server. The optional boolean useVector argument is for returning a vector3 type. Keep in mind that the coords sync interval can be adjusted in the configuration file in case you want to get precise player coords.
---@return {x: number, y: number, z: number}
function Player.getCoords() end

---This function returns the player's current coordinates on the server. The optional boolean useVector argument is for returning a vector3 type. Keep in mind that the coords sync interval can be adjusted in the configuration file in case you want to get precise player coords.
---@param useVector3 false
---@return {x: number, y: number, z: number}
function Player.getCoords(useVector3) end

---This function returns the player's current coordinates on the server. The optional boolean useVector argument is for returning a vector3 type. Keep in mind that the coords sync interval can be adjusted in the configuration file in case you want to get precise player coords.
---@param useVector3 true
---@return vector3
function Player.getCoords(useVector3) end

---Returns the players group
---@return string group the group of the player
function Player.getGroup() end

---Returns the players identifier
---@return string identifier
function Player.getIdentifier() end

---This function returns the entire player inventory.
---@return Array<{name: string, count: integer, label: string, weight: number, usable: boolean, rare: boolean, canRemove: boolean}>
function Player.getInventory() end

---This function returns the entire player inventory.
---@param minimal false
---@return Array<{name: string, count: integer, label: string, weight: number, usable: boolean, rare: boolean, canRemove: boolean}>
function Player.getInventory(minimal) end

---This function returns the entire player inventory.
---@param minimal true
---@return Dictionary<string, integer>
function Player.getInventory(minimal) end

---Returns the item from the players inventory.
---@param item string the name of the item
---@return {name: string, count: integer, label: string, weight: number, usable: boolean, rare: boolean, canRemove: boolean} item the item
function Player.getInventoryItem(item) end

---Returns the players current job.
---@return ESX_JOB job the job of the player
function Player.getJob() end

---Returns the players loadout.
---@return Array<{name: string, ammo: integer, label: string, components: Array<string>}> loadout the loadout of the player
function Player.getLoadout() end

---This function gets missing accounts. It's an internal function used when saving player data to database and should not be used.
---**INTERNAL, SHOULD NOT BE USED!**
---@param cb fun(missingAccounts: Array<string>)
function Player.getMissingAccounts(cb) end

---Returns the amount of money the player has on his "money" account
---@return integer amount the amount of money on that account
function Player.getMoney() end

---If you have ESX identity Installed, This will return the Character Name, If not, it will return the FiveM name.
function Player.getName() end

---This functions returns the loadoutNum and a weapon object for the weapon if the player has it.
---@param weaponName string the name of the weapon to return the loadout from
---@return integer loadoutNum *MISSING INFORMATION*
---@return string weapon *MISSING INFORMATION*
function Player.getWeapon(weaponName) end

---Returns the weapon tint index for the given weapon
---@param weaponName string the name of the wepaon to get the tint index from
---@return integer weaponTintIndex
function Player.getTint(weaponName) end

---This functions returns the current player weight in a number type, can be used to do calculations.
---@return number weight the weight of the player
function Player.getWeight() end

---Checks if the player has the given item.
---@param name string the name of the item
---@return boolean hasItem
function Player.hasItem(name) end

---Checks if the player has the given weapon.
---@param name string the name of the weapon to check
---@return boolean hasWeapon
function Player.hasWeapon(name) end

---Checks if the player has the given weapon component.
---@param weaponName string the name of the weapon
---@param weaponComponent string the name of the component
---@return boolean hasWeaponComponent
function Player.hasWeaponComponent(weaponName, weaponComponent) end

---Removes the player from the server.
function Player.kick() end

---Removes the given amount of money from the given account from the player.
---@param account string|"bank"|"money"|"black_money" the account to remove the money from
---@param money integer the amount of money to remove
function Player.removeAccountMoney(account, money) end

---Removes an item from the players inventory.
---@param item string the name of the item
---@param count integer the amount of items to remove
function Player.removeInventoryItem(item, count) end

---Removes money from the players "money" account
---@param money integer the amount of money to remove
function Player.removeMoney(money) end

---This function removes a weapon from the players loadout.
---@param weaponName string the name of the weapon to remove.
function Player.removeWeapon(weaponName) end

---Removes the given amount of ammunation from the given weapon of the player.
---@param weaponName string the name of the weapon to remove the ammo from
---@param ammoCount integer the amount of ammo to remove
function Player.removeWeaponAmmo(weaponName, ammoCount) end

---Removes a weapon component from a weapon the player has.
---@param weaponName string the name of the weapon to remove the component from
---@param weaponComponent string the name of the component to remove
function Player.removeWeaponComponent(weaponName, weaponComponent) end

---This function sets the players meta.
---@param index string the index of the meta
---@param subIndex string the subindex of the meta
---@param meta any the meta to set
function Player.setMeta(index, subIndex, meta) end

---This function sets the amount of money the player has on the given account.
---@param account string|"bank"|"money"|"black_money" the account to set the money for
---@param money integer the amount of money to set
function Player.setAccountMoney(account, money) end

---Sets the players current coordinates (teleports the player).
---@param coords vector3|{x: number, y: number, z: number} the coordinates to set
function Player.setCoords(coords) end

---Sets the item, in the players inventory, to the given count.
---@param item string the name of the item
---@param count integer the amount of items
function Player.setInventoryItem(item, count) end

---Sets the players job.
---@param name string the name of the job
---@param grade integer the grade of the job
function Player.setJob(name, grade) end

---Sets the players weight.
---@param newWeight number the new weight of the player
function Player.setMaxWeight(newWeight) end

---Sets the players money on the "money" account.
---@param money integer the amount of money
function Player.setMoney(money) end

---Sets the players name.
---@param name string the new name of the player
function Player.setName(name) end

---This function sets the players weapon tintIndex.
---@param weaponName string the name of the weapon
---@param weaponTintIndex integer the tint index to set
function Player.setWeaponTint(weaponName, weaponTintIndex) end

---Shows an advanced notification to the player
---@param title string the title of the notification
---@param subject string the subject of the notification
---@param msg string the message of the notification
---@param mugshot base64 the mugshot of the notification
---@param iconType integer the icon type of the notification
---@param flash boolean if the notification should flash
---@param saveToBrief boolean if the notification should be saved to Pause Menu > Help
---@param hudColorIndex integer the hud color index of the notification
function Player.showAdvancedNotification(title, subject, msg, mugshot, iconType, flash, saveToBrief, hudColorIndex) end

---Shows a help notification with a message.
---@param msg string the message to show
---@param thisFrame boolean if the notification should only be shown this frame
---@param beep boolean if the notification should beep
---@param duration integer the duration to show the notification in milliseconds
function Player.showHelpNotification(msg, thisFrame, beep, duration) end

---Shows a notification to the player.
---@param msg string the message to show
---@param type 'info'|'success'|'error' the type of the notification
---@param time integer the time to show the notification in milliseconds
function Player.showNotification(msg, type, time) end

---Triggers a client event on the player.
---@param name string the name of the event
---@param ... unknown the arguments to pass to the event
function Player.triggerEvent(name, ...) end

---This is an internal function used to update player coords, **DO NOT USE IT**.
function Player.updateCoords() end

---@class SV_ESX
---@field Math ESX_MATH
---@field OneSync ESX_ONESYNC
local ESX = {}

---@class ESX_ONESYNC
ESX.OneSync = {}

---This function dumps the given table to a readable string with a tree structure.
---@param table table the table to dump
---@return string the dumped table
function ESX.DumpTable(table) end

---This function Returns the ESX config and its current values.
---@return Dictionary<string, any> config more exploration nesessary
function ESX.GetConfig() end

---This function gets a random string, with the defined length.
---@param length integer the length of the string
---@return string str the random string
function ESX.GetRandomString(length) end

---This function Returns The weapon and its full weapon name. (*Missing information!*)
function ESX.GetWeapon(weaponName) end

---This function returns the weapon component object for a weapon. Includes the component label, name and hash key. See the weapon config file for the available components. (*Missing information*)
function ESX.GetWeaponComponent(weaponName, weaponComponent) end

---This function returns the weapon label for a weapon.
---@param weaponName string the weapon name
---@return string label the weapon label
function ESX.GetWeaponLabel(weaponName) end

---This function gets the complete weapon list and label.
---@param byHash boolean if true the key will be the weapon hash, else it will be an index (Array)
---@return Dictionary<hash, {name: string, label: string}>|Array<{name: string, label: string}> weaponList the weapon list
function ESX.GetWeaponList(byHash) end

---This function clears a timeout from the ESX.SetTimeout function.
---@param id integer the timeout id returned from ESX.SetTimeout
function ESX.ClearTimeout(id) end

---Registers A command using ESX functions, these use ACE permissions to automatically assign which groups can access the command. It Also has argument types, allowing for better control over the arguments.
---@param name string|Array<string> a command or a command with aliases
---@param group string the group that is allowed to use this command 
---@param cb fun(xPlayer: ESX_PLAYER, args: Array<string>, showError: any|boolean)
---@param allowConsole boolean
---@param suggestion {help: string?, arguments: {name: string?, help: string?, type: "number"|"player"|"string"|"item"|"weapon"|"any"}?}
function ESX.RegisterCommand(name, group, cb, allowConsole, suggestion) end

---This function creates a pickup.
---@param type "item_standard"
---@param name string the name of the item
---@param count integer amount of this item that sould be included
---@param label string the label of the pickup
---@param playerId player The player server id who created the pickup, used to determine pickup spawn point
function ESX.CreatePickup(type, name, count, label, playerId) end

---This function creates a pickup.
---@param type "item_account"
---@param name "money"|"bank"|"black"
---@param count integer the amount of money
---@param label string the name of the pickup
---@param playerId player the players server id who created the pickup, used to determine the pickup spawn point
function ESX.CreatePickup(type, name, count, label, playerId) end

---This function creates a pickup.
---@param type "item_weapon"
---@param name string the name of the weapon
---@param count integer the amount of ammunition
---@param label string the name of the pickup
---@param playerId player the players server id who created the pickup, used to determine the pickup spawn point
---@param cmponents Array<string>? a list of components attached to the weapon
---@param tintIndex integer? the weapon tint index
function ESX.CreatePickup(type, name, count, label, playerId, cmponents, tintIndex) end

---Sends a message to the given webhook
---@param name string the name of the webhook (*config.logs.lua*)
---@param title string the title of the embed
---@param color string the name of the color of the embed (*config.logs.lua*)
---@param message string the message to log
function ESX.DiscordLog(name, title, color, message) end

---Sends a message to the given webhook
---@param name string the name of the webhook (*config.logs.lua*)
---@param title string the title of the embed
---@param color string the name of the color of the embed (*config.logs.lua*)
---@param fields Array<{name: string, value: string, inline: boolean}>
function ESX.DiscordLogFields(name, title, color, fields) end

---Checks if the given job and grade exist
---@param job string the name of the job
---@param grade integer the grade of the job
function ESX.DoseJobExist(job, grade) end

---Returns a list of extended players matching the required argument.
---@param argument string|"group"|"job" the type of filter
---@param value string the group or job the player has to have to be included in the list (e.g. "police"|"user")
---@return Array<ESX_PLAYER> players the found players for the given argument
function ESX.GetExtendedPlayers(argument, value) end

---Returns the label of the item with the given name.
---@param name string then name of the item
---@return string? label the label of the given item or nil if the item dosn't exist
function ESX.GetItemLabel(name) end

---Returns all jobs, along with their grades. => returned dictionary also contains grade information, but it is unclear from the documentation, in which way, also it is not 100% clear that the key is the accutal job name, or if it is an array instad of a dictionary.
---@return Dictionary<string, {label: string}> jobs *MISSING INFORMATION*
function ESX.GetJobs() end

---Returns the extended player for the given server id
---@param id player the players server id
---@return ESX_PLAYER? player the player or nil if no player with the given source is online.
function ESX.GetPlayerFromId(id) end

---Returns the extended player with the given identifier.
---@param identifier string the players identifier
---@return ESX_PLAYER? player the player or nil if no player with the given identifier is registered.
function ESX.GetPlayerFromIdentifier(identifier) end

---This function registers a server callback, which is used for sending Server Data, to a client.
---@param name string the name of the callback
---@param handler fun(source: player, cb: fun(...), ...)
function ESX.RegisterServerCallback(name, handler) end

---This function registers an item as usable.
---@param item string the name of the item that should be registered as usable.
---@param cb fun(player: player)
function ESX.RegisterUsableItem(item, cb) end

---Waits for the given time, then calls the given callback
---@param time integer the time to wait in milliseconds
---@param cb fun() the function that will be called after the given time
---@return integer the timeout identifier
function ESX.SetTimeout(time, cb) end

---This function writes a trace if debugging is enabled in the configuration file.
---@param msg any Anything to print to console
function ESX.Trace(msg) end

---This function is to force a player to use an item.
---@param player player the player who should be forced to use the given item.
---@param item string the name of the item that the player should be forced to use.
function ESX.UseItem(player, item) end

---An Async function that Creates Server-Sided Objects.
---> Note: CreateObject Is a RPC (Remote Procedure Call) Native, which means it requires there to be a valid client nearby for it to be able to spawn!
---@param model string|hash the model of the object that should be spawned
---@param coords vector3|{x: number, y: number, z: number} the location where the object should be spawned.
---@param heading number the heading the object should have
---@param cb fun(object: object)? the function to call after the object has spawned.
function ESX.OneSync.SpawnObject(model, coords, heading, cb) end

---An Async function that Creates Server-Sided Peds.
---> Note: CreatePed Is a RPC (Remote Procedure Call) Native, which means it requires there to be a valid client nearby for it to be able to spawn!
---
---> Warning: In Some ESX versions, cb may not be called!
---@param model string|hash the model of the ped that should be spawned
---@param coords vector3|{x: number, y: number, z: number} the location where the ped should be spawned.
---@param heading number the heading the ped should have
---@param cb fun(ped: ped)? the function to call after the ped has spawned.
function ESX.OneSync.SpawnPed(model, coords, heading, cb) end

---An Async function that Creates a Server-Sided Ped and then Places them into a specifc vehicle.
---> Note: CreatePedInsideVehicle Is a RPC (Remote Procedure Call) Native, which means it requires there to be a valid client nearby for it to be able to spawn!
---
---> Warning: In Some ESX versions, cb may not be called!
---@param model string|hash the model of the ped that should be spawned
---@param vehicle vehicle the vehicle the ped should be placed into
---@param seat integer the seat the ped should be placed into
---@param cb fun(ped: ped)? the function to call after the ped has spawned.
function ESX.OneSync.SpawnPedInVehicle(model, vehicle, seat, cb) end

---An Async function that Creates Server-Sided Vehicles, this allows them to be persistant and owned by the server, rather than Client
---@param model string|hash the model of the vehicle that should be spawned
---@param coords vector3|{x: number, y: number, z: number} the location where the vehicle should be spawned.
---@param heading number the heading the vehicle should have
---@param properties ESX_VEHICLE_OPTIONAL_PROPERTIES? the properties of the vehicle
---@param cb fun(vehicleNetId: integer)? the function to call after the vehicle has spawned.
function ESX.OneSync.SpawnVehicle(model, coords, heading, properties, cb) end

---Returns the ESX object.<br>*Use `--[[@as CL_ESX]]` (for client side esx) or `--[[@as SV_ESX]]` (for server side esx) behind this function call, so it will be detected as the right one in the file using this function.*
---@return CL_ESX|SV_ESX es_extended the ESX object
function exports.es_extended:getSharedObject() end
