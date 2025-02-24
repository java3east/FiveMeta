--[[
    SHALL NOT BE USED DURING RUNTIME

    This file contains the meta data for qbcore functions.
    It is created by Java3east and is allowed to be used in any project, without any restrictions.
    It dosn't add any functionality to any resource, it is only used for type checking and intellisense.
    Not all natives are included, yet. It will be updated over time, as needed. Feel free to contribute.

    THIS REQUIRES THE LUA LANGUAGE SERVER TO WORK PROPERLY
]]

---@meta QBCore

--[[
    THE FOLLOWING INFORMATION GOT EXTRACTED FROM THE QBCore DOCUMENTATION,
    AND HAS BEEN CORRECTED / CHANGED WITH INFORMATION EXTRACTED FROM THE
    RESOURCE IT SELF.
]]

--[[
    Authors (Java3east) sidenode:
    I hope this brings a little more clarity about how QBCore works, and how to use it.
    Please always look in the function comments, since they might solve some confusion
    and will probably save you some time and your server some performance problems.
    Important: some of the function documentations inside the resource itself cannot be trusted,
    they sometimes state a wrong order of arguments, or even add imaginary return values, wich
    will not be returned.
    So if you add any new functions to this file, please ensure that at least this documentation stays correct,
    to save the users of this file some time and confusion.
]]


---@class EXPORTS.QBCore
local qbExports = {}


---@type EXPORTS.QBCore | SERVER.QBCoreExports
exports['qb-core'] = nil

---Returns the core object of the QBCore resource.
---@param self EXPORTS.QBCore The object reference
---@return CLIENT.QBCore.CoreObject|SERVER.QBCore.CoreObject coreObject the core object
function qbExports:GetCoreObject() end

---@class SERVER.QBCoreExports
local sv_qbExports = {}

---Adds a new function to the qb-core function table (QBCore.Functions.<name>)
---@param name string the name of the function
---@param handler fun(...) : ... the function to add
function sv_qbExports:SetMethod(name, handler) end

---Adds a new field to the qb-core object (QBCore.<field>)
---@param name string
---@param value any
function sv_qbExports:SetField(name, value) end

---Adds a new job to the shared object
---@param name string
---@param job SHARED.QBCore.Job
function sv_qbExports:AddJob(name, job) end

---Adds the given job s to the shared object
---@param jobs Dictionary<string, SHARED.QBCore.Job>
function sv_qbExports:AddJobs(jobs) end

---Removes the job with the given name
---@param name string the name of the job
function sv_qbExports:RemoveJob(name) end

---Replaces the current job in the shared object with the given data
---@param name string the name of the job to replace
---@param job SHARED.QBCore.Job the new job data
function sv_qbExports:UpdateJob(name, job) end

---Adds the given item
---@param name string the name of the item
---@param item SHARED.QBCore.Shared.Item
function sv_qbExports:AddItem(name, item) end

---Updates the given item
---@param name string the name of the item to update
---@param item SHARED.QBCore.Shared.Item the new item data
function sv_qbExports:UpdateItem(name, item) end

---Adds the given items
---@param items Dictionary<string, SHARED.QBCore.Shared.Item>
function sv_qbExports:AddItems(items) end

---Removes the given item from the list of known items
---@param name string the name of the item to remove
function sv_qbExports:RemoveItem(name) end

---Registers a new gang
---@param name string the name of the gang
---@param gang SHARED.QBCore.Shared.Gang
function sv_qbExports:AddGang(name, gang) end

---Adds the given gangs to the shared object
---@param gangs Dictionary<string, SHARED.QBCore.Shared.Gang>
function sv_qbExports:AddGangs(gangs) end

---Removes the given gang from the list of known gangs
---@param name string the name of the gang to remove
function sv_qbExports:RemoveGang(name) end

---UPdates the given gang
---@param name string the name of the gang to update
---@param gang SHARED.QBCore.Shared.Gang the new gang data
function sv_qbExports:UpdateGang(name, gang) end

---Returns the current version of the framework (see fxmanifest.lua)
---@return string version the current version of the framework
function sv_qbExports:GetCoreVersion() end

---Bans the given player
---@param player player the player to ban
---@param reason string the reason for the ban
function sv_qbExports:ExploitBan(player, reason) end

---@class SHARED.QBCore

---@class SHARED.QBCore.VehicleProperties
---@field model hash the model hash of the vehicle
---@field plate string the plate of the vehicle
---@field plateIndex integer the plate index of the vehicle
---@field bodyHealth number the body health of the vehicle
---@field engineHealth number the engine health of the vehicle
---@field tankHealth number the tank health of the vehicle
---@field fuelLevel number the fuel level of the vehicle
---@field dirtLevel number the dirt level of the vehicle
---@field oilLevel number the oil level of the vehicle
---@field color1 integer the primary color of the vehicle
---@field color2 integer the secondary color of the vehicle
---@field pearlescentColor integer the pearlescent color of the vehicle
---@field dashboardColor integer the dashboard color of the vehicle
---@field wheelColor integer the wheel color of the vehicle
---@field wheels integer the wheel type of the vehicle
---@field wheelSize number the wheel size of the vehicle
---@field wheelWidth number the wheel width of the vehicle
---@field tireHealth Array<number> the tire health of the vehicle
---@field tireBurstState Array<boolean> the tire burst state of the vehicle
---@field tireBurstCompletely Array<boolean> the tire burst completely state of the vehicle
---@field windowTint integer the window tint of the vehicle
---@field windowStatus Array<boolean> the window status of the vehicle, indicating which windows are broken
---@field doorStatus Array<boolean> the door status of the vehicle, indicating which doors are broken
---@field neonEnabled Array<boolean> the neon enabled status of the vehicle
---@field neonColor Array<integer> the neon colors for the vehicle
---@field interiorColor integer the interior color of the vehicle
---@field extras Dictionary<string, boolean> the extras of the vehicle (key: the extra id from 0 to 12 as string)
---@field tyreSmokeColor Array<integer> the tire smoke color of the vehicle
---@field xenonColor integer|{[1]: number, [2]: number, [3]: number} the lights color or the lights color as rgb
---@field modSpoilers integer the spoiler mod of the vehicle
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
---@field modKit17 integer
---@field modTurbo boolean
---@field modKit19 integer
---@field modTireSmokeEnabled boolean
---@field modKit21 integer
---@field modXenon boolean
---@field modFrontWheels integer
---@field modBackWheels integer
---@field modCustomTiresF integer
---@field modCustomTiresR integer
---@field modPlateHolder integer
---@field modVanityPlate integer
---@field modTrimA integer
---@field modOrnaments integer
---@field modDashboard integer
---@field modDial integer
---@field modDoorSpeaker integer
---@field modSeats integer
---@field SteeringWheel integer
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
---@field modKit47 integer
---@field modLivery integer (GetVehicleMod(vehicle, 48) / GetVehicleLivery(vehicle))
---@field modKit49 integer
---@field liveryRoof integer


---@class SHARED.QBCore.VehiclePropertiesOptional
---@field plate string? the plate of the vehicle
---@field plateIndex integer? the plate index of the vehicle
---@field bodyHealth number? the body health of the vehicle
---@field engineHealth number? the engine health of the vehicle
---@field tankHealth number? the tank health of the vehicle
---@field fuelLevel number? the fuel level of the vehicle
---@field dirtLevel number? the dirt level of the vehicle
---@field oilLevel number? the oil level of the vehicle
---@field color1 integer? the primary color of the vehicle
---@field color2 integer? the secondary color of the vehicle
---@field pearlescentColor integer? the pearlescent color of the vehicle
---@field dashboardColor integer? the dashboard color of the vehicle
---@field wheelColor integer? the wheel color of the vehicle
---@field wheels integer? the wheel type of the vehicle
---@field wheelSize number? the wheel size of the vehicle
---@field wheelWidth number? the wheel width of the vehicle
---@field tireHealth Array<number>? the tire health of the vehicle
---@field tireBurstState Array<boolean>? the tire burst state of the vehicle
---@field tireBurstCompletely Array<boolean>? the tire burst completely state of the vehicle
---@field windowTint integer? the window tint of the vehicle
---@field windowStatus Array<boolean>? the window status of the vehicle, indicating which windows are broken
---@field doorStatus Array<boolean>? the door status of the vehicle, indicating which doors are broken
---@field neonEnabled Array<boolean>? the neon enabled status of the vehicle
---@field neonColor Array<integer>? the neon colors for the vehicle
---@field interiorColor integer? the interior color of the vehicle
---@field extras Dictionary<string, boolean>? the extras of the vehicle (key: the extra id from 0 to 12 as string)
---@field tyreSmokeColor Array<integer>? the tire smoke color of the vehicle
---@field xenonColor integer|{[1]: number, [2]: number, [3]: number}? the lights color or the lights color as rgb
---@field modSpoilers integer? the spoiler mod of the vehicle
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
---@field modKit17 integer?
---@field modTurbo boolean?
---@field modKit19 integer?
---@field modTireSmokeEnabled boolean?
---@field modKit21 integer?
---@field modXenon boolean?
---@field modFrontWheels integer?
---@field modBackWheels integer?
---@field modCustomTiresF integer?
---@field modCustomTiresR integer?
---@field modPlateHolder integer?
---@field modVanityPlate integer?
---@field modTrimA integer?
---@field modOrnaments integer?
---@field modDashboard integer?
---@field modDial integer?
---@field modDoorSpeaker integer?
---@field modSeats integer?
---@field SteeringWheel integer?
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
---@field modKit47 integer?
---@field modLivery integer? (GetVehicleMod(vehicle, 48) / GetVehicleLivery(vehicle))
---@field modKit49 integer?
---@field liveryRoof integer?




---Displays a text on the screen
---@param name "qb-core:client:DrawText"
---@param text string the text
---@param position "left" | "top" | "right" | "bottom" the position of the text
function TriggerEvent(name, text, position) end

---Changes the text at the given position on the screen
---@param name "qb-core:client:ChangeText"
---@param text string the text
---@param position "left" | "top" | "right" | "bottom" the position of the text
function TriggerEvent(name, text, position) end

---Hides the text displayed on the hud (text beeing displayed with 'qb-core:client:DrawText')
---@param name "qb-core:client:HideText"
function TriggerEvent(name) end

---no idea what it dose
---@param name "qb-core:client:KeyPressed"
function TriggerEvent(name) end

---Displays a text on the screen
---@param name "qb-core:client:DrawText"
---@param player player
---@param text string the text
---@param position "left" | "top" | "right" | "bottom" the position of the text
function TriggerClientEvent(name, player, text, position) end

---Changes the text at the given position on the screen
---@param name "qb-core:client:ChangeText"
---@param player player
---@param text string the text
---@param position "left" | "top" | "right" | "bottom" the position of the text
function TriggerClientEvent(name, player, text, position) end

---Hides the text displayed on the hud (text beeing displayed with 'qb-core:client:DrawText')
---@param name "qb-core:client:HideText"
---@param player player
function TriggerClientEvent(name, player) end

---no idea what it dose
---@param name "qb-core:client:KeyPressed"
---@param player player
function TriggerClientEvent(name, player) end

---Displays 3d text at the given coords
---@param text string the text
---@param position "left" | "top" | "right" | "bottom" the position of the text
function qbExports:DrawText(text, position) end

---Changes the text at the given position on the screen
---@param text string the text
---@param position "left" | "top" | "right" | "bottom" the position of the text
function qbExports:ChangeText(text, position) end

---Hides the text displayed on the hud (text beeing displayed with 'qb-core:client:DrawText')
function qbExports:HideText() end

---no idea what it dose
function qbExports:KeyPressed() end

---@class CLIENT.QBCore


---@class CLIENT.QBCore.PlayerData


---@class CLIENT.QBCore.CoreObject
---@field Functions CLIENT.QBCore.CoreObject.Functions
---@field Config SHARED.QBCore.Config
---@field Shared SHARED.QBCore.Shared

---@class CLIENT.QBCore.CoreObject.Functions
local CQCF = {}

---Creates a new client callback.
---@param name string the name of the callback
---@param cb fun(cb: fun(...: any), ... : any) the callback function that will be called
function CQCF.CreateClientCallback(name, cb) end

---Triggers a client callback.
---@param name string the name of the client callback
---@param cb fun(...: any) the callback function that will be called on the client response
---@vararg any the arguments that will be passed to the client callback
function CQCF.TriggerClientCallback(name, cb, ...) end

---Triggers a server callback.
---@param name string the name of the server callback
---@param cb fun(...: any) the callback function that will be called on the server response
---@vararg any the arguments that will be passed to the server callback
function CQCF.TriggerCallback(name, cb, ...) end

---Debugs an object to the server console.<br>
---*NOTE:<br>
---This one is written quit anoying, the names of
---the arguments on the client didn't match the ones on the server event listener.<br>
---The used argument names are the ones the server event handler is using.<br>
---So no this documentation is not wrong, qb-core/client/functions.lua is...*
---@param obj table the object that will be debugged
---@param indent boolean whether the content of the object should be indented
---@param resource string the name of the resource that is debugging (usually GetCurrentResourceName())
function CQCF.Debug(obj, indent, resource) end

---Returns the players player data.
---@nodiscard
---@param cb fun(data: CLIENT.QBCore.PlayerData)? this callback is optional, I don't know why you should use it,<br>
---since it dosn't change a thing in performance or anything else and the data will be returned anyway.<br>
---Just makes the code less readable when its beeing used, so please don't
---@return CLIENT.QBCore.PlayerData playerData the player data
function CQCF.GetPlayerData(cb) end

---Returns the players coordiantes and heading as a vector4.<br>
---*NOTE: if you are calling this in a thread you might want to<br>
---instead receive the entity coords and heading yourself since it<br>
---is totally easy and saves performance*
---@nodiscard
---@param entity entity the entity you want to get the coords from
---@return vector4 coords the coords and heading of the entity
function CQCF.GetCoords(entity) end

---Returns wheather or not the player has the given count of the given item.<br>
---*NOTE: remember this is client side and can therefor be easily manipulated*
---@nodiscard
---@param item string the name of the item
---@param amount integer the amount of the item
---@return boolean hasItem whether or not the player has the given count of the given item
function CQCF.HasItem(item, amount) end

---Makes the player look at an entity.<br>
---**NOTE: please use `TaskLookAtEntity` instead, this function is crippling the performance for no reason**
---@param entity entity the entity the player should look at
---@param timeout integer the time in milliseconds before the function stops. (maximum: 5000)
---@param speed number the speed at wich the player should look at the entity. (maximum: 5.0)
---@return any? value the inbuild documentation says this should be a number containing the time<br>
---the entity was looked at, but it is never returning anything, exept when there is an error and then<br>
---its the promise value, so just ignore this value
function CQCF.LookAtEntity(entity, timeout, speed) end

---Makes the player play the given animation.<br>
---*NOTE: This function is a complete mess and the performance probably isn't to great eather, so be warned*
---@param animDict string the animation dictionary
---@param animName string the animation name
---@param upperbodyOnly boolean whether or not the animation should only be played on the upper body
---@param duration integer the duration of the animation in milliseconds
---@return any? value the inbuild documentation says this should be a number containing a timestamp,<br>
---but don't trust this, since sometimes it will return other promise results that have nothing to do with time.
function CQCF.PlayAnim(animDict, animName, upperbodyOnly, duration) end

---Returns whether or not the player is wearing gloves.<br>
---*NOTE: this requires the drawable index to be registered in the config*
---@nodiscard
---@return boolean isWearingGloves whether or not the player is wearing gloves
function CQCF.IsWearingGloves() end

---Sends a notification to the player.<br>
---@param text string the text content of the notification
---@param texttype 'primary' | 'error' | 'police' | 'ambulance'? the type of the notification
---@param lenght integer? the time in milliseconds the notification should be displayed
---@param icon URL? a url to an icon that should be displayed in the notification
function CQCF.Notify(text, texttype, lenght, icon) end

---Displays a progress bar to the player.<br>
---@param name any ignored
---@param label string the text to display on the progress bar
---@param duration integer the duration of the progress bar in milliseconds
---@param useWhileDead boolean allows playing this progress bar while the player is dead
---@param canCancel boolean whether or not the progress bar can be canceled
---@param disableControls any ignored
---@param animation any ignored
---@param prop any ignored
---@param propTwo any ignored
---@param onFinish fun()?
---@param onCancel fun()?
function CQCF.Progressbar(name, label, duration, useWhileDead, canCancel, disableControls, animation, prop, propTwo,
                          onFinish, onCancel)
end

---Returns a list of all vehicles in rendering distance of the player.<br>
---*NOTE: If you are calling this in a loop you should consider calling `GetGamePool('CVehicle')`<br>
---directly, since this is all this function dose, and a little extra performance optimization can't hurt.*
---@nodiscard
---@return Array<vehicle> vehicles a list of all vehicles in rendering distance of the player
function CQCF.GetVehicles() end

---Returns a list of all objects in rendering distance of the player.<br>
---*NOTE: If you are calling this in a loop you should consider calling `GetGamePool('CObject')`<br>
---directly, since this is all this function dose, and a little extra performance optimization can't hurt.*
---@nodiscard
---@return Array<object> objects a list of all objects in rendering distance of the player
function CQCF.GetObjects() end

---Returns an array of all active players.<br>
---*NOTE: If you are calling this in a loop you should consider calling `GetActivePlayers()`<br>
---directly, since this is all this function dose, and a little extra performance optimization can't hurt.*
---@nodiscard
---@return Array<player> players an array of all active players
function CQCF.GetPlayers() end

---Returns all players withing the given distance of the given coords.<br>
---@nodiscard
---@param coords vector3? the coords to check from (default: the players coords)
---@param distance number? the distance to check from (default: 5.0)
---@return Array<player> players an array of all players within the given distance of the given coords
function CQCF.GetPlayersFromCoords(coords, distance) end

---Returns the closest player to the given coordinates.<br>
---@nodiscard
---@param coords vector3? the coords to check from (default: the players coords)
---@return player player the closest player to the given coordinates (-1 if no player was found)
---@return number distance the distance to the closest player (-1 if no player was found)
function CQCF.GetClosestPlayer(coords) end

---Returns all Peds withing rendering distance of the player, while ignoreing the peds given in the ignore array.<br>
---*NOTE: If you are calling this in a loop and you don't need to ignore any peds you should consider calling `GetGamePool('CPed')`<br>
---directly, since this is all this function dose, and a little extra performance optimization can't hurt.*
---@nodiscard
---@param ignore Array<ped>? an array of peds to ignore
---@return Array<ped> peds an array of all peds in rendering distance of the player
function CQCF.GetPeds(ignore) end

---Returns the closest ped to the given coordinates, while ignoreing the peds in the ingore array.<br>
---@nodiscard
---@param coords vector3? the coords to check from (default: the players coords)
---@param ignore Array<ped>? an array of peds to ignore
---@return ped ped the closest ped to the given coordinates (-1 if no ped was found)
---@return number distance the distance to the closest ped (-1 if no ped was found)
function CQCF.GetCLosestPed(coords, ignore) end

---Returns the closest vehicle to the given coordinates<br>
---@nodiscard
---@param coords vector3? the coords to check from (default: the players coords)
---@return vehicle vehicle the closest vehicle to the given coordinates (-1 if no vehicle was found)
---@return number distance the distance to the closest vehicle (-1 if no vehicle was found)
function CQCF.GetClosestVehicle(coords) end

---Returns the closest object to the given coordinates<br>
---@nodiscard
---@param coords vector3? the coords to check from (default: the players coords)
---@return object object the closest object to the given coordinates (-1 if no object was found)
---@return number distance the distance to the closest object (-1 if no object was found)
function CQCF.GetClosestObject(coords) end

---Loads the given model.<br>
---@param model hash the model hash to load
function CQCF.LoadModel(model) end

---Spawns a vehicle at the given coordinates.<br>
---*NOTE: you might want to consider spawning vehicles, peds, objects (in generall all entities)<br>
---on the server, to allow setting the entity mode of the bucket to strict wich dosn't allow clientside<br>
---entity spawning, but keeps servers a little saver from modders. Also some anticheats don't like client side oject spawning.*
---@nodiscard
---@param model hash | string the model hash or name of the vehicle
---@param cb fun(vehicle: vehicle)? will be called at the end of the function<br>
---*A return would have been cleaner, but this is all we've got I guess.*
---@param coords vector4 | vector3 | {x: number, y: number, z: number} the coords to spawn the vehicle at
---@param isnetworked boolean whether or not the vehicle should be networked
---@param teleportInto boolean whether or not the player should be teleported into the vehicle
function CQCF.SpawnVehicle(model, cb, coords, isnetworked, teleportInto) end

---Delets the given vehicle
---@param vehicle vehicle the vehicle to delete
function CQCF.DelteVehicle(vehicle) end

---Returns the trimed plate of the given vehicle.<br>
---@param vehicle vehicle the vehicle to get the plate from
function CQCF.GetPlate(vehicle) end

---Returns the label for the type of the given vehicle
---@nodiscard
---@param vehicle vehicle the vehicle to get the label from
---@return string label the label for the type of the given vehicle
function CQCF.GetVehicleLabel(vehicle) end

---Returns the properties of the given vehicle
---@nodiscard
---@param vehicle vehicle the vehicle to get the properties from
---@return SHARED.QBCore.VehicleProperties properties the properties of the given vehicle
function CQCF.GetVehicleProperties(vehicle) end

---Sets the properties for a vehicle
---@param vehicle vehicle the vehicle to set the properties for
---@param properties SHARED.QBCore.VehiclePropertiesOptional the optional properties set
function CQCF.SetVehicleProperties(vehicle, properties) end

---Draws a 3 dimensional text at the given coordinates.
---@param x number
---@param y number
---@param z number
---@param text string
function CQCF.DrawText3D(x, y, z, text) end

---Loads the given anim dict (sync)
---@param animDict string the name of the anim dict
function CQCF.RequestAnimDict(animDict) end

---Returns the closest bone of the given entity from the player<br>
---*NOTE: this function only checks bones within the `list` parameter<br>
---and returns the bodyshell bone incase it dosn't find any of the givne bones*
---@nodiscard
---@param entity entity the entity to get the closest bone from
---@param list Array<integer|{id: integer}> the list of bones (boneIndex or table where the boneIndex is the id)
---@return {id: integer, type: string, name: string} bone the closest bone to the player
---@return vector3 coords the coords of the closest bone
---@return number distance the distance to the closest bone
function CQCF.GetClosestBone(entity, list) end

---Attaches the given prop th the given ped
---@param ped ped the ped to attach the prop to
---@param model hash|string the model hash of the prop
---@param boneId integer the bone index to attach the prop to
---@param x number
---@param y number
---@param z number
---@param xR number
---@param yR number
---@param zR number
---@param rotationOrder integer the rotation order (why is it called vertex in the script????)
function CQCF.AttachProp(ped, model, boneId, x, y, z, xR, yR, zR, rotationOrder) end

---Checks if the given area is clear of any vehicles<br>
---*NOTE: if the coordinates are not given they will be replaced with the players coordinates*<br>
---*NOTE: This ONLY DETECTS VEHICLES*
---@nodiscard
---@param coords vector3? the coords to check from (default: the players coords)
---@param radius number the radius to check
---@return boolean isClear whether or not the area is clear
function CQCF.SpawnClear(coords, radius) end

---Loads the given animation set (sync)
---@param animSet string the name of the anim set
function CQCF.LoadAnimSet(animSet) end

---Loads the given particle dictionary (sync)
---@param particleDictionary string the name of the particle dictionary
function CQCF.LoadParticleDictionary(particleDictionary) end

---Plays the given particle effect at the given coordinates
---@param dict string the particle dictionary
---@param ptName string the name of the particle effect in the dictionary
---@param looped boolean? whether or not the particle should be looped
---@param coords vector3|{x: number, y: number, z: number}? the coords to play the particle at (default: the players coords)
---@param rot vector3|{x: number, y: number, z: number} the rotation of the particle
---@param scale number? the scale of the particle
---@param alpha number? the alpha of the particle
---@param color {r: number, g: number, b: number}? the color of the particle
---@param duration integer? only used if the particle is set to looped
---@return integer particleHandle
function CQCF.StartParticleAtCoord(dict, ptName, looped, coords, rot, scale, alpha, color, duration) end

---Plays the given particle effect on the given entity
---@param dict string
---@param ptName string
---@param looped boolean?
---@param entity entity
---@param bone integer?
---@param offset vector3|{x: number, y: number, z: number}
---@param rot vector3|{x: number, y: number, z: number}
---@param scale number?
---@param alpha number?
---@param color {r: number, g: number, b: number}?
---@param evolution {name: string, amount: integer}? used in `SetParticleFxLoopedEvolution` as second and third parameter idk what it dose though
---@param duration integer? only used if the particle is set to looped
function CQCF.StartParticleOnEntity(dict, ptName, looped, entity, bone, offset, rot, scale, alpha, color, evolution,
                                    duration)
end

---Returns a table of the street name of the given location.
---@nodiscard
---@param coords vector3|{x: number, y: number, z: number} the coords to get the street name from
---@return {main: string, cross: string?} streetNames the street name and crossing name
function CQCF.GetStreetNameAtcoord(coords) end

---Reeturns the label text for the name of the zone at the given coords<br>
---@nodiscard
---@param coords vector3|{x: number, y: number, z: number} the coords to get the zone name from
---@return string zoneName the name of the zone
function CQCF.GetZoneAtCoords(coords) end

---Returns the cardinal direction of the given entity
---@nodiscard
---@param entity entity the entity to get the cardinal direction from
---@return 'North'|'West'|'South'|'East' direction the cardinal direction of the entity
function CQCF.GetCardinalDirection(entity) end

---Returns the current in game time
---@nodiscard
---@return {min: integer, hour: integer, ampm: 'AM'|'PM', formattedHour: integer, formattedMin: string?} time the current in game time
function CQCF.GetCurrentTime() end

---Returns the ground location for the given coordinates<br>
---*NOTE: returns the given coordinates, if unable to find ground*<br>
---*NOTE: this uses `GetGroundZFor_3dCoord` wich you can also use directly, and thatway see if it failed or the current coordinates are the ground*
---@nodiscard
---@param coords vector3|{x: number, y: number, z: number} the coords to get the ground location from
---@return vector3 groundCoords the ground location for the given coordinates
function CQCF.GetGroundZCoord(coords) end

---Returns the meterial the ground at that location is made of
---@param entity entity the entity to get the ground material from
---@return hash material
---@return entity entityHit
---@return vector3 surfaceNormal
---@return vector3 endCoords
---@return boolean success
---@return boolean retval
function CQCF.GetGroundHash(entity) end

---@class PLAYER_SATE
---@field isLoggedIn boolean whether or not the player is logged in
LocalPlayer.state = {}





---@class SHARED.QBCore.Config
---@field MaxPlayers integer the maximum amount of players the server can have
---@field DefaultSpawn vector4 the default spawn location for players
---@field UpdateInterval integer player update interval in minutes
---@field StatusInterval integer hunger/thirst update interval in milliseconds
---@field Player SHARED.QBCore.Config.Player
---@field Server SHARED.QBCore.Config.Server
---@field Commands SHARED.QBCore.Config.Commands
---@field Notify SHARED.QBCore.Config.Notify

---@class SHARED.QBCore.Config.Money.MoneyTypes : {[string]: integer}
---@field cash integer start cash
---@field bank integer start bank
---@field crypto integer start crypto

---@class SHARED.QBCore.Config.Money
---@field MoneyTypes SHARED.QBCore.Config.Money.MoneyTypes
---@field DontAllowMinus string[] the money types that are not allowed to go below 0
---@field PayCheckTimeOut integer the amount of minutes between two paychecks
---@field PayCheckSociety boolean whether or not the paycheck should be payed by the society

---@class SHARED.QBCore.Config.Player
---@field HungerRate number rate at wich the hunger should decrease
---@field ThirstRate number rate at wich the thirst should decrease
---@field Bloodtypes string[] the bloodtypes that are allowed
---@field PlayerDefaults SHARED.QBCore.Config.Player.PlayerDefaults

---@class SHARED.QBCore.Config.Player.PlayerDefaults
---@field citizenid fun() : string creates a new citizen id
---@field cid integer 0 the default citizen id
---@field money fun() : SHARED.QBCore.Config.Money.MoneyTypes creates a new money object
---@field optin boolean don't know what it dose
---@field charinfo SHARED.QBCore.Config.Player.PlayerDefaults.CharInfo the default char information
---@field job SHARED.QBCore.Config.Player.PlayerDefaults.Job the default job information
---@field gang SHARED.QBCore.Config.Player.PlayerDefaults.Gang the default gang information
---@field metadata SHARED.QBCore.Config.Player.PlayerDefaults.Metadata the default metadata information
---@field position vector4
---@field items table

---@class SHARED.QBCore.Config.Player.PlayerDefaults.CharInfo
---@field firstname string
---@field lastname string
---@field birthdate string
---@field gender integer
---@field nationality string
---@field phone fun() : string creates a new phone number
---@field account fun() : string creates a new account number

---@class SHARED.QBCore.Config.Player.PlayerDefaults.Job
---@field name string
---@field label string
---@field payment integer
---@field type integer
---@field onduty boolean
---@field isboss boolean
---@field grade {name: string, level: integer}

---@class SHARED.QBCore.Config.Player.PlayerDefaults.Gang
---@field name string
---@field label string
---@field isboss boolean
---@field grade {name: string, level: integer}

---@class SHARED.QBCore.Config.Player.PlayerDefaults.Metadata
---@field hunger integer
---@field thirst integer
---@field stress integer
---@field isdead boolean
---@field inlaststand boolean
---@field armor integer
---@field ishandcuffed boolean
---@field tracker boolean
---@field injail integer
---@field jailitems table how exaclty the information is saved is not clear
---@field status table how exaclty the information is saved is not clear
---@field phone table how exaclty the information is saved is not clear
---@field rep table how exaclty the information is saved is not clear
---@field currentapartment nil no more information about this
---@field bloodtype fun():string returns a random blood type
---@field fingerprint fun():string returns a random fingerprint
---@field walletid fun():string returns a random wallet id
---@field criminalrecord {hasRecord: boolean, date: nil}
---@field licenses {driver: boolean, business: boolean, weapon: boolean}
---@field inside {house: nil, apartment: {apartmentType: nil, apartmentId: nil}}
---@field phonedata {SerialNumber: fun():string, InstalledApps: table}

---@class SHARED.QBCore.Config.Server
---@field Closed boolean no one will be able to join the server (except with special permissions)
---@field ClosedReason string reason why the server is closed
---@field Uptime integer the time the server is running (no idea what the unit is)
---@field Whitelist boolean whether or not the server is whitelisted
---@field WhitelistPermission string the permission needed to join the server
---@field PVP boolean whether or not pvp is enabled
---@field Discord string the discord invite link
---@field CheckDuplicateLicense boolean whether or not the server should check for duplicate licenses
---@field Permissions string[] (default: {'god', 'admin', 'mod'})

---@class SHARED.QBCore.Config.Commands
---@field OOCColor {[1]: integer, [2]: integer, [3]: integer} rgb color for the ooc chat

---@class SHARED.QBCore.Config.Notify
---@field NotificationStyling {group: boolean, position: 'top-left'|'top-right'|'bottom-left'|'bottom-right'|'top'|'bottom'|'left'|'right'|'center', progress: boolean}
---@field VariantDefinitions Dictionary<string, {classes: string, icon: string}>



---@class SHARED.QBCore.Shared
---@field Gangs Dictionary<string, SHARED.QBCore.Shared.Gang>
---@field Items Dictionary<string, SHARED.QBCore.Shared.Item>
---@field ForceJobDefaultDutyAtLogin boolean whether or not the player should be put on duty / not on duty when joining
---@field Jobs Dictionary<string, SHARED.QBCore.Job>
---@field Locations SHARED.QBCore.Locations
---@field StarterItems Dictionary<string, {amount: integer, item: string}> key: the item name
---@field MaleNoGloves Dictionary<integer, boolean>
---@field FemaleNoGloves Dictionary<integer, boolean>
---@field Vehicles SHARED.QBCore.Shared.Vehicle[]
---@field weapons Dictionary<string, SHARED.QBCore.Shared.Weapon> key: the weapon name
local QBS = {}

---@class SHARED.QBCore.Shared.Gang
---@field label string
---@field grades Dictionary<string, {name: string, isboss: boolean?}> key: the grade level as string

---@class SHARED.QBCore.Shared.Item
---@field name string
---@field label string
---@field weight integer
---@field type string
---@field ammotype 'AMMO_PISTOL' | 'AMMO_SMG' | 'AMMO_SHOTGUN '| 'AMMO_RIFLE' | 'AMMO_MG' | 'AMMO_SNIPER' | 'AMMO_PETROLCAN'?
---@field image string
---@field unique boolean
---@field usable boolean
---@field shouldClose boolean
---@field description string


---@class SHARED.QBCore.Job
---@field label string the label of the job
---@field defaultDuty boolean whether or not the player should be on duty by default
---@field offDutyPay boolean whether or not the player should be payed while off duty
---@field grades Dictionary<string, SHARED.QBCore.JobGrade> the grades of the job (key: the grade level as string)

---@class SHARED.QBCore.JobGrade
---@field name string the name of the grade
---@field payment integer the payment of the grade


---@class SHARED.QBCore.Locations : {[string]: vector4}

---Returns a random string with the given length
---@nodiscard
---@param length integer
---@return string randomStr the random string
function QBS.RandomStr(length) end

---Returns a random string, just containing numbers, with the given length
---@nodiscard
---@param length integer
---@return string randomStr the random string
function QBS.RandomInt(length) end

---Splits the given string at the given delimiter
---@nodiscard
---@param str string
---@param delimiter string
---@return Array<string> parts the parts of the string
function QBS.SplitStr(str, delimiter) end

---Trims the given string
---@nodiscard
---@param value string
---@return string trimmedValue the trimmed string
function QBS.Trim(value) end

---Sets the first letter of the given string to uppercase
---@nodiscard
---@param str string
---@return string newStr the string with the first letter in uppercase
function QBS.FirstToUpper(str) end

---Rounds the given number to the given number of decimals
---@nodiscard
---@param value number the number to round
---@param numDecimals integer the amount of decimals
---@return number roundedValue the rounded number
function QBS.Round(value, numDecimals) end

---Changes the given vehicle extra
---@param vehicle vehicle
---@param extra integer
---@param enable boolean
function QBS.ChangeVehicleExtra(vehicle, extra, enable) end

---Sets the default extras for the given vehicle<br>
---*NOTE:
---This clears any existing extras before applying the new ones*
---@param vehicle vehicle
---@param config {[integer]: boolean}
function QBS.SetDefaultVehicleExtras(vehicle, config) end

---@class SHARED.QBCore.Shared.Vehicle
---@field model string the model name
---@field name string the name (display name)
---@field brand string the brand of the vehicle
---@field price integer the price of the vehicle
---@field category string the category of the vehicle
---@field type string the type of the vehicle
---@field shop string | string[] the shop the vehicle is available in

---@class SHARED.QBCore.Shared.Weapon
---@field name string the name of the weapon
---@field label string the label of the weapon
---@field weapontype string the type of the weapon
---@field ammoType string the ammo type of the weapon
---@field damagereason string the damage reason of the weapon






---@class SERVER.QBCore.CoreObject
---@field Commands SERVER.QBCore.CoreObject.Commands
---@field Functions SERVER.QBCore.CoreObject.Functions
local SQC = {}


---Debugs the content of the given table to the server console
---@param tbl table
---@param indent boolean whether or not the content should be indented on sublevels
function SQC.Debug(tbl, indent) end

---Logs the given message to the server console as an error
---@param resource string the name of the calling resource
---@param msg string the error to log
function SQC.ShowError(resource, msg) end

---Logs the given message to the server console as a success
---@param resource string the name of the calling resource
---@param msg string the success to log
function SQC.ShowSuccess(resource, msg) end

---@class SERVER.QBCore.CoreObject.Commands
---@field List Dictionary<string, SERVER.QBCore.CoreObject.CommandData>
---@field IgnoreList Dictionary<string, boolean> some backwards compatibility, not really required for anything
local SQCC = {}

---@class SERVER.QBCore.CoreObject.CommandData
---@field name string the name of the command (lowercase)
---@field permission string the group that is allowed to use the command
---@field help string the help text of the command
---@field arguments string[] the names of the arguments for this command
---@field argsrequired boolean whether or not the arguments are required (if they are, the command will not be executed without them)
---@field callback fun(source: player, args: string[], raw: string) the callback function of the command

---Adds a new command
---@param name string the name of the command
---@param help string the help text
---@param arguments string[] the required arguments
---@param argsrequired boolean whether or not the arguments are required
---@param permission string? the permission required to use the command (default: 'user')
---@param callback fun(source: player, args: string[], raw: string) the callback function of the command
function SQCC.Add(name, help, arguments, argsrequired, permission, callback) end

---refreshes the permissions and command list for the given player
---@param source player the player to refresh the permissions and command list for
function SQCC.Refresh(source) end

---@class SERVER.QBCore.CoreObject.Functions
local SQCF = {}

---Adds the given method to all the given player ids
---@param ids player|player[]|-1 if set to -1 it will be added for all players
---@param methodName string the name of the method
---@param handler fun(...:any) : ... the handler function
function SQCF.AddPlayerMethod(ids, methodName, handler) end

---Returns the coordinates of the given entity with heading
---@nodiscard
---@param entity entity
---@return vector4 coords the coords of the entity
function SQCF.GetCoords(entity) end

---Returns the identifier of the given player of the given type
---@nodiscard
---@param source player
---@param idtype 'license' | 'steam' | 'discord' | 'ip' | 'xbl' | 'live' | 'fivem' | 'rockstar'? the type of the identifier (default: license)
---@return string? identifier the identifier of the player
function SQCF.GetIdentifier(source, idtype) end

---Returns the id of the player related to the given identifier<br>
---*NOTE:
---This might be a big hit on the performance (depending on the amount of players online)<br>
---It goes through all players (QBCore.Players) and checks if any of their identifiers fits the given one.*
---@nodiscard
---@param identifier string the identifier to get the player id from
---@return player? player the player id related to the given identifier
function SQCF.GetSource(identifier) end

---Returns the qb player object for the given player server id
---@nodiscard
---@param source player the player server id
---@return SERVER.QBCore.Player? qPlayer
function SQCF.GetPlayer(source) end

---Returns the qb player for the given citizen id
---@nodiscard
---@param citizenid string the citizen id
---@return SERVER.QBCore.Player? qPlayer
function SQCF.GetPlayerByCitizenId(citizenid) end

---Returns the qb player for the given citizen id (the player will have all the functions, but some events will not be triggered)
---*NOTE: You should be able to use this like any other player, except that you can't do anything that inclodes the players source*
---@nodiscard
---@param citizenid string the citizen id
---@return SERVER.QBCore.Player? qPlayer
function SQCF.GetOfflinePlayerByCitizenId(citizenid) end

---Returns the qb player for the given license
---@nodiscard
---@param license string license id
---@return SERVER.QBCore.Player? qPlayer
function SQCF.GetPlayerByLicense(license) end

---Returns the qb player who has the given phone number
---@nodiscard
---@param phoneNumber string the phone number
---@return SERVER.QBCore.Player? qPlayer
function SQCF.GetPlayerByPhone(phoneNumber) end

---Returns teh player owning the given account
---@nodiscard
---@param account string the identifier of the account
---@return SERVER.QBCore.Player? qPlayer
function SQCF.GetPlayerByAccount(account) end

---Returns the first player where the given property and value matches<br>
---*NOTE:<br>
---This checks properties in the qPlayer.PlayerData.charinfo section
---**THIS ONLY RETURNS THE FIRST RESULT, EVEN IF THERE ARE MULTIPLE MATCHES***
---@nodiscard
---@param property string the property to check
---@param value any the value to check
---@return SERVER.QBCore.Player? qPlayer
function SQCF.GetPlayerByCharInfo(property, value) end

---Returns a list of all player server ids that are currently online
---@nodiscard
---@return player[] players an array of all player server ids
function SQCF.GetPlayers() end

---Returns an array of all currently online qPlayers
---@nodiscard
---@return SERVER.QBCore.Player[] players an array of all currently online qPlayers
function SQCF.GetQBPlayers() end

---Returns the server ids and the amount of the players in the given job, currently onduty
---@nodiscard
---@param job string the name of the job to check
---@return player[] players an array of all player server ids
---@return integer amount the amount of players in the given job
function SQCF.GetPlayersOnDuty(job) end

---Returns only the amount of players onduty in the given job
---@nodiscard
---@param job string the name of the job to check
---@return integer amount the amount of players in the given job
function SQCF.GetDutyCount(job) end

---Returns the closest player to the given coordinates<br>
---*NOTE:<br>
---If coords are not given it will take the coordinates of the given player<br>
---it will ignore the given player at all time*
---@nodiscard
---@param source player? a player to ignore / replacement for coords
---@param coords vector3? the coords to check from
---@return player player the closest player to the given coordinates
---@return number distance the distance to the closest player
function SQCF.GetClosestPlayer(source, coords) end

---Returns the closest object to the given coords / to the given player
---@nodiscard
---@param source player?
---@param coords vector3?
---@return object object
---@return number distance
function SQCF.GetClosestObject(source, coords) end

---Returns the closest ped to the given coords / to the given player
---@nodiscard
---@param source player?
---@param coords vector3?
---@return ped ped
---@return number distance
function SQCF.GetClosestVehicle(source, coords) end

---Returns the closest vehicle to the given coords / to the given player
---@nodiscard
---@param source player?
---@param coords vector3?
---@return vehicle vehicle
---@return number distance
function SQCF.GetClosestPed(source, coords) end

---Returns the qb bucket objects (playerBuckets, entityBuckets)
---@nodiscard
---@return Dictionary<string, {id: player, bucket: integer}> playerBuckets
---@return Dictionary<entity, {id: entity, bucket: integer}> entityBuckets
function SQCF.GetBucketObjects() end

---Warps the player into the given dimension (bucket) and changes the bucket in the player bucket map
---@param source player the player to warp
---@param bucket integer the dimension to warp the player into
---@return boolean success whether or not the warp was successful
function SQCF.SetPlayerBucket(source, bucket) end

---Warps the entity into the given dimension (bucket) and changes the bucket in the entity bucket map
---@param entity entity the entity to warp
---@param bucket integer the dimension to warp the entity into
---@return boolean success whether or not the warp was successful
function SQCF.SetEntityBucket(entity, bucket) end

---Returns all the players inside the given bucket<br>
---*NOTE:<br>
---This function only works if the players bucket was set over the function of this framework and not directly over the game native*
---@nodiscard
---@param bucket integer the bucket to get the players from
---@return player[] players an array of all players in the given bucket
function SQCF.GetPlayersInBucket(bucket) end

---Returns all the entities inside the given bucket<br>
---*NOTE:<br>
---This function only works if the entities bucket was set over the function of this framework and not directly over the game native*
---@nodiscard
---@param bucket integer the bucket to get the entities from
---@return entity[] entities an array of all entities in the given bucket
function SQCF.GetEntitiesInBucket(bucket) end

---Creates a vehicle and places the given player in the vehicle<br>
---*NOTE:<br>
---This function requires a player to be near the vehicle*
---@nodiscard
---@param source player the player to place in the vehicle
---@param model string|hash the model name of the vehicle
---@param coords vector4? the coords to spawn the vehicle at or the players coords
---@param warp boolean whether or not the player should be warped into the vehicle
---@return vehicle vehicle the vehicle that was created
function SQCF.SpawnVehicle(source, model, coords, warp) end

---Uses the experimental ``CreateAutomobile` native to create a vehicle<br>
---*NOTE:<br>
---This function dosn't require a player nearby, but dosn't work for all vehicles.*
---@nodiscard
---@param source player
---@param model string|hash
---@param coords vector4
---@param warp boolean
---@return vehicle vehicle
function SQCF.CreateAutomobile(source, model, coords, warp) end

---Creates a vehicle using the `CreateVehicleServerSetter` native to create a vehicle<br>
---*NOTE:<br>
---This is the function that should be used to create vehicles*
---@nodiscard
---@param source player
---@param model string|hash
---@param vehtype 'automobile'|'bike'|'boat'|'helicopter'|'plane'|'train'
---@param coords vector4
---@param warp boolean
---@return vehicle vehicle
function SQCF.CreateVehicle(source, model, vehtype, coords, warp) end

---@class SERVER.QBCore.Player
local SQBP = {}
SQBP.Functions = {}

---Triggers the `QBCore:Player:SetPLayerData` event on the client and the server
function SQBP.Functions.UpdatePlayerData() end

---Sets the players job
---@param job string the name of the job
---@param grade integer the grade of the job
function SQBP.Functions.SetJob(job, grade) end

---Sets the players gang and grade
---@param gang string the name of the gang
---@param grade integer the grade the player should have
function SQBP.Functions.SetGang(gang, grade) end

---Displays a notification to the player
---@param text string the text of the notification
---@param type 'primary'|'error'|'police'|'ambulance' the type of the notification
---@param length integer the time in milliseconds the notification should be displayed
function SQBP.Functions.Notify(text, type, length) end

---Checks if the player has the given item
---@nodiscard
---@param item string the name of the item
---@param amount integer the amount of the item
---@return boolean hasItem whether or not the player has the given item
function SQBP.Functions.HasItem(item, amount) end

---Returns the name of the players character
---@nodiscard
---@return string name the name of the players character
function SQBP.Functions.GetName() end

---Sets wheather or not this player is on duty
---@param onDuty boolean whether or not the player is on duty
function SQBP.Functions.SetJobDuty(onDuty) end

---Sets the given player data key to the given value.
---This will also send the player data update event
---@param key string the key to change
---@param val any the value to set
function SQBP.Functions.SetPlayerData(key, val) end

---Sets the given metakey to the given value
---@param meta string the key to change
---@param val any the value to set
function SQBP.Functions.SetMetaData(meta, val) end

---Sets the players reputation
---@param rep string the type of reputation to change
---@param amount number the amount to add
function SQBP.Functions.AddRep(rep, amount) end

---Removes the given amount of reputation from the player
---@param rep string
---@param amount number
function SQBP.Functions.RemoveRep(rep, amount) end

---Returns the players current reputation
---@param rep string the type of reputation
function SQBP.Functions.GetRep(rep) end

---Adds money to the players given account
---@param moneyType 'cash'|'bank'|'crypto'
---@param amount number the amount of money to add
---@param reason string? the reason for adding the money
function SQBP.Functions.AddMoney(moneyType, amount, reason) end

---Removes the given amount of money from the players given account
---@nodiscard
---@param moneyType 'cash'|'bank'|'crypto'
---@param amount number the amount to remove
---@param reason string? the reason for removing the money
---@return boolean success
function SQBP.Functions.RemoveMoney(moneyType, amount, reason) end

---Sets the amount of money for the given account of this player
---@param moneyType 'cash'|'bank'|'crypto'
---@param amount number
---@param reason string? the reason for setting the money
function SQBP.Functions.SetMoney(moneyType, amount, reason) end

---Returns the amount of money the player has
---@nodiscard
---@param moneyType 'cash'|'bank'|'crypto'
---@return number amount the amount of money the player has
function SQBP.Functions.GetMoney(moneyType) end

---Saves the player to the database
function SQBP.Functions.Save() end

---Makes the player logout
function SQBP.Functions.Logout() end

---Sets the function with the given name to the given handler
---@param methodName string the name of the function
---@param handler fun(...:any) : ... the handler of the function
function SQBP.Functions.AddMethod(methodName, handler) end

---Sets the given field to the given value
---@param fieldName string the name of the field
---@param data any the data to set
function SQBP.Functions.AddField(fieldName, data) end

---@param name 'QBCore:DebugSometing'
---@param tbl table
---@param indent boolean
---@param resource string
function TriggerServerEvent(name, tbl, indent, resource) end
