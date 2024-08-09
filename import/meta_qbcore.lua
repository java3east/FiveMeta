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
exports['qb-core'] = {}

---Returns the core object of the QBCore resource.
---@param self EXPORTS.QBCore The object reference
---@return CLIENT.QBCore.CoreObject|SERVER.QBCore.CoreObject coreObject the core object
exports['qb-core'].GetCoreObject = function(self) end



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




---@class CLIENT.QBCore


---@class CLIENT.QBCore.PlayerData


---@class CLIENT.QBCore.CoreObject
---@field Functions CLIENT.QBCore.CoreObject.Functions

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
function CQCF.Progressbar(name, label, duration, useWhileDead, canCancel, disableControls, animation, prop, propTwo, onFinish, onCancel) end

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
function CQCF.GetPlayers()end

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
function CQCF.StartParticleOnEntity(dict, ptName, looped, entity, bone, offset, rot, scale, alpha, color, evolution, duration) end


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

---@class SERVER.QBCore
---@class SERVER.QBCore.CoreObject