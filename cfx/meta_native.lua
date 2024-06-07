--[[
    SHALL NOT BE USED DURING RUNTIME

    This file contains the meta data for the native functions.
    It is created by Java3east and is allowed to be used in any project, without any restrictions.
    It dosn't add any functionality to any resource, it is only used for type checking and intellisense.
    Not all natives are included, yet. It will be updated over time, as needed. Feel free to contribute.

    THIS REQUIRES THE LUA LANGUAGE SERVER TO WORK PROPERLY
]]

---@meta

---Globalize 'source' so it can be recognized, and doesn't show up as an undefined variable.
---@type integer
source = nil

---export table, can be filled in another meta file, to add intellisense for exports of other resources.
---@type Dictionary<string, Dictionary<string, any>>
exports = {}

---Returns the player object from the given server id.
---@param src integer the players server id.
---@return { state: { set: fun(self: table, key: string, value: any) } } playerObject
function Player(src) end

---json function container
json = {}

---Converts a table into a json string
---@param tbl table
---@return jsonString 
function json.encode(tbl) end

---Converts a string into a table.
---@param str jsonString
---@return table
function json.decode(str) end


---Adds an output for the specified audio submix.
---@param submixId integer the input submix
---@param outputSubmixId integer the output submix (0 = master game submix)
AddAudioSubmixOutput = function(submixId, outputSubmixId) end


---Loads a minimap overlay from a GFx file in the current resource.
---@param name string The path to a .gfx file in the current resource. It has to be specified as a file.
---@return integer overlayId a minimap overlay id.
AddMinimapOverlay = function(name) end

---?
---@param origTxd string
---@param origTxn string
---@param newTxd string
---@param newTxn string
AddReplaceTexture = function(origTxd, origTxn, newTxd, newTxn) end

---Adds a handler for changes to a state bag.
---@param keyFilter string The key to check for, or null for no filter.
---@param bagFilter string The bag ID to check for such as entity:65535, or null for no filter.
---@param handler fun(bagName: string, key: string, value: any, reserved: number, replicated: boolean)
---@return integer cookie to remove the change handler.
AddStateBagChangeHandler = function(keyFilter, bagFilter, handler) end


---Adds a text entry, which can be reffered to by its entryKey.
---@param entryKey string
---@param entryText string
AddTextEntry = function(entryKey, entryText) end


---Dose the same as `AddTextEntry` only with a hash instead of a string.
---@param entryKey hash
---@param entryText string
AddTextEntryByHash = function(entryKey, entryText) end


---Detaches a wheel by its index from the given vehicle.
---@param vehicle vehicle the vehicle to remove the wheel from.
---@param wheelIndex integer the index of the wheel to remove.
---@param leaveDebrisTrail boolean requires "veh_debris_trail" ptfx.
---@param deleteWheel boolean if ture the wheel will be deleted, otherwise it will be detachted.
---@param unknownFlag boolean true in example.
---@param putOnFire boolean set the wheel on fire, as soon as its detached
BreakOffVehicleWheel = function(vehicle, wheelIndex, leaveDebrisTrail, deleteWheel, unknownFlag, putOnFire) end


---This is similar to the PushScaleformMovieFunction natives, except it calls in the TIMELINE of a minimap overlay.
---@param miniMap integer The minimap overlay ID.
---@param fnName string A function in the overlay's TIMELINE.
CallMinimapScaleformFunction = function(miniMap, fnName) end

---Cancels the currently executing event.
CancelEvent = function() end


---Removes vehicle xenon lights custom RGB color.
---@param vehicle vehicle
ClearVehicleXenonLightsCustomColor = function(vehicle) end


---returns the cloned timecycle modifier index, or -1 if failed.
---@param sourceModifierName string
---@param clonedModifierName string
---@return integer cloned The cloned timecycle modifier index, or -1 if failed.
CloneTimecycleModifier = function(sourceModifierName, clonedModifierName) end


---@REQURE_TESTING
---Commits the backing pixels to the specified runtime texture.
---@param tex long
CommitRuntimeTexture = function(tex) end


---Creates an audio submix with the specified name, or gets the existing audio submix by that name.
---@param name string The audio submix name.
---@return integer submixId A submix ID, or -1 if the submix could not be created.
CreateAudioSubmix = function(name) end


---@REQURE_TESTING
---Creates a volume where water effects do not apply. Useful for preventing water collisions from flooding areas underneath them. This has no effect on waterquads, only water created from drawables and collisions. Don't create volumes when your local ped is swimming (e.g. use IS_PED_SWIMMING in your scripts before you call this)
---@param xMin number
---@param yMin number
---@param zMin number
---@param xMax number
---@param yMax number
---@param zMax number
---@return integer retval DryVolumeid?
CreateDryVolume = function(xMin, yMin, zMin, xMax, yMax, zMax) end

---@SHARED
---Waits the given time in milliseconds
---@param ms integer milliseconds
Wait = function(ms) end


---Returns the current state of a resource.
---@param name string the name of the resource.
---@return 'missing'|'started'|'starting'|'stopped'|'stopping'|'uninitialized'|'unknown'
GetResourceState = function(name) end


---Returns the name of this resource.
---@return string resourceName
GetCurrentResourceName = function() end


---Adds a new local event handler (client => client or server => server events)
---@param name string the name of the event.
---@param func function the event handler.
AddEventHandler = function(name, func) end


---Returns the name of a player.
---@param src integer playerServerId.
---@return string name
GetPlayerName = function(src) end

---Kicks a player from the server.
---@param player integer the players server id.
---@param reason string the reason for the kick.
DropPlayer = function(player, reason) end


---Rgister a new network event.
---@param name string the name of the event
---@param func? fun(...:any)
RegisterNetEvent = function(name, func) end


---Triggers a client event from the server.
---@param name string the name of the client event.
---@param player integer the players server id.
---@param ... any the event data.
TriggerClientEvent = function(name, player, ...) end



---Changes the size of text.
---@param scale number no effect?
---@param size number
SetTextScale = function(scale, size) end


---Sets the text font.
---@param fontType integer usually 4
SetTextFont = function(fontType) end


---Sets the text color in rgb.
---@param r integer red
---@param g integer green
---@param b integer blue
---@param a integer alpha
SetTextColor = function(r, g, b, a) end


---Center the text
---@param align boolean true if the text should be centered.
SetTextCentre = function(align) end


---Adds a new text component, that can then be drawn.
---@param text string the text.
AddTextComponentString = function(text) end


---Sets teh text draw origin.
---IMPORTANT: Limited to 32 different origins each frame, can be cleared with
---@param x number the x coordinate
---@param y number the y coordinate
---@param z number the z coordinate
---@param p3 any unkown parameter
SetDrawOrigin = function(x, y, z, p3) end


---Draws a new sphere
---@param x number
---@param y number
---@param z number
---@param radius number
---@param r integer
---@param g integer
---@param b integer
---@param a number
function DrawSphere(x, y, z, radius, r, g, b, a) end

---Starts the creation of a help text.
---@param inputType string|'THREESTRINGS' the type of the input
function BeginTextCommandDisplayHelp(inputType) end


---Adds an arbitrary string as a text component placeholder, replacing ~a~ in the current text command's text label.
---@param content string the text content.
function AddTextComponentSubstringPlayerName(content) end


---Shows the thext command help
---@param shape integer usually 0
---@param loop boolean called in loop? (usually false)
---@param beep boolean make a sound?
---@param duration integer the time in ms to display this text.
function EndTextCommandDisplayHelp(shape, loop, beep, duration) end


---Creates a new vector3
---@param x number x coordinate
---@param y number y coordinate
---@param z number z coordinate
---@return vector3 vector3
function vector3(x, y, z) end


---Returns the location of the gien entity.
---@param entity entity the entity id.
---@return vector3
function GetEntityCoords(entity) end


---Returns world coords, relative to the entity and the offset.
---@param entity entity
---@param x number x offset (left / right)
---@param y number y offset (forward / backward)
---@param z number z offset (up / down)
---@return vector3
function GetOffsetFromEntityInWorldCoords(entity, x, y, z) end


---Returns the hashKey of a string.
---@param str string the string to get the hashKey from.
---@return hash hash
function GetHashKey(str) end


---Creates a new Thread
---@param func fun()
function CreateThread(func) end


---Triggers a server event.
---@param name string the name of the event that should be triggered.
---@param ... any the event parameters.
function TriggerServerEvent(name, ...) end


---Returns the entity hash model.
---@param entity entity
---@return hash model
function GetEntityModel(entity) end

---Returns all entities from the given game pool
---@param pool 'CPed'|'CObject'|'CVehicle'|'CPickup'
---@return Array<entity>
function GetGamePool(pool) end

---Returns the player ped
---@return ped playerPed
function PlayerPedId() end


---Checks if the given key just got released.
---@param controlType integer usually 0
---@param controlIndex integer Key.index
---@return boolean released
function IsControlJustReleased(controlType, controlIndex) end

---Checks if the given key just got pressed.
---@param controlType integer usually 0
---@param controlIndex integer Key.index
function IsControlJustPressed(controlType, controlIndex) end


---Declares the entry type of a notification, for example "STRING".
---@param type string|"STRING"
function BeginTextCommandThefeedPost(type) end


---Displays the post content.
---@param flash boolean Makes the notification flash on the screen.
---@param showInPauseMenu boolean if thrue the notification will appear in Pause Menu > Info/Brief > Notifications
function EndTextCommandThefeedPostTicker(flash, showInPauseMenu) end


---Sends a message to the UI with the given table as data.
---@param data table
function SendNUIMessage(data) end


---Registers a new NUI callback.
---@param name string the callback name
---@param func fun(data: table, cb: fun(...: any))
function RegisterNUICallback(name, func) end


---@param url string
---@param cb fun(err: string, text: string, headers: table)
---@param method 'POST'|'GET'|string
---@param data jsonString
---@param headers {['Content-Type']: string|'application/json'}|table
function PerformHttpRequest(url, cb, method, data, headers) end

---Sets the dimension entity lockdown mode.
---@param dimension integer default: 0
---@param mode 'strict'|'relaxed'|'inactive'
function SetRoutingBucketEntityLockdownMode(dimension, mode) end


---Creates a new vector3
---@param x number
---@param y number
---@param z number
---@return vector3
function vector3(x, y, z) end

---Creates a new vector4
---@param x number
---@param y number
---@param z number
---@param w number
---@return vector4
function vector4(x, y, z, w) end

---Sets the players dimension
---@param player integer
---@param dimension integer
function SetPlayerRoutingBucket(player, dimension) end

---Checks if the given player is active.
---@param playerId integer
---@return boolean active
function NetworkIsPlayerActive(playerId) end

---Returns the player id of this player
---@return integer playerId
function PlayerId() end

---Triggers a  server/client event.
---@param name string
---@param ... unknown
function TriggerEvent(name, ...) end

---Sets the ped coords.
---@param ped entity
---@param x number
---@param y number
---@param z number
function SetEntityCoords(ped, x, y, z) end

---Returns the dimension the player is currently in.
---@param player integer the players server id.
---@return integer dimension
function GetPlayerRoutingBucket(player) end

---Returns the dimension the entity is currently in.
---@param entity entity
---@return integer dimension
function GetEntityRoutingBucket(entity) end

---Creats a new vehicle
---@param modelHash hash
---@param x number
---@param y number
---@param z number
---@param w number
---@param isNetwork boolean
---@param missionEntity boolean
---@return vehicle vehicle
function CreateVehicle(modelHash, x, y, z, w, isNetwork, missionEntity) end

---Sets the entities dimension.
---@param entity entity
---@param dimension integer
function SetEntityRoutingBucket(entity, dimension) end

---Warps the ped into the vehicle at the given set index.
---@param ped ped
---@param vehicle vehicle
---@param seatIndex integer
function SetPedIntoVehicle(ped, vehicle, seatIndex) end

---Delets the given entity.
---@param entity entity
function DeleteEntity(entity) end

---Checks if the given entity is fully loaded.
---@param entity entity
---@return boolean exists
function DoesEntityExist(entity) end

---Returns the player ped from a player id.
---@param player integer player server id.
---@return ped ped
function GetPlayerPed(player) end

---Disables the given control action
---@param pad integer
---@param control integer
---@param disable boolean
function DisableControlAction(pad, control, disable) end

---Returns the vehicle the ped is currently sitting in.
---@param ped ped
---@param lastVehicle boolean
---@return vehicle?
function GetVehiclePedIsIn(ped, lastVehicle) end

---Places the vehicle properly on ground.
---@param vehicle vehicle
function SetVehicleOnGroundProperly(vehicle) end

---Freezes the entities position.
---@param entity entity
---@param freeze boolean
function FreezeEntityPosition(entity, freeze) end

---Returns the current game timer in milliseconds.
---@return integer
function GetGameTimer() end

---Returns the networkId of the given entity.
---@param entity entity
---@return integer networkId
function NetworkGetNetworkIdFromEntity(entity) end

---Sets the location of the camera.
---@param cam cam
---@param x number
---@param y number
---@param z number
function SetCamCoord(cam, x, y, z) end

---Makes the camera face the given entity.
---@param cam cam
---@param entity entity
function PointCamAtEntity(cam, entity) end

---Creates a new camera.
---@param name string|'DEFAULT_SCRIPTED_CAMERA'
---@param active boolean set to true if this sould be the active camera.
function CreateCam(name, active) end

---This will start / stop rendering the scripts active camera.
---@param render boolean true if the active camera should be rendered.
---@param ease boolean true if the camera should have a smoothe transition from the old one.
---@param easeTime integer the time in milliseconds this transition will take.
---@param p3 boolean normally true
---@param p4 boolean normally true
function RenderScriptCams(render, ease, easeTime, p3, p4) end

---Makes the screen fade into black.
---@param ms integer the transition time in milliseconds
function DoScreenFadeOut(ms) end

---Returns the entity from a given network id.
---@param netId integer
---@return entity entity
function NetworkGetEntityFromNetworkId(netId) end

---Sets the heading of the given entity.
---@param entity entity
---@param heading number
function SetEntityHeading(entity, heading) end

---Makes the screen fade in.
---@param ms integer the time in milliseconds the transition will take.
function DoScreenFadeIn(ms) end

---Sets a handling flag for the given vehilce type
---@param vehicle string (vehicle model name)
---@param class string|'CHandlingData'
---@param key string|'fJumpForceScale'
---@param value number
function SetHandlingFloat(vehicle, class, key, value) end

---Sets a handling flag for the given vehilce type
---@param vehicle string (vehicle model name)
---@param class string|'CHandlingData'
---@param key string|'fJumpForceScale'
---@param value number
function SetHandlingField(vehicle, class, key, value) end


---Checks if the given key just got pressed.
---@param controlType integer usually 0
---@param controlIndex integer Key.index
---@return boolean released
function IsControlPressed(controlType, controlIndex) end

---Activates the vehicle boost sound.
---@param vehicle vehicle
---@param active boolean
function SetVehicleBoostActive(vehicle, active) end

---Applys force to the entities center of mass.
---@param vehicle vehicle
---@param type integer
---@param x number
---@param y number
---@param z number
---@param p5 integer
---@param p6 boolean
---@param p7 boolean
---@param p8 boolean
function ApplyForceToEntityCenterOfMass(vehicle, type, x, y, z, p5, p6, p7, p8) end

---Checks if the vehicle is touching ground with all vehicles
---@param vehicle vehicle
---@return boolean wehicleOnAllWheels
function IsVehicleOnAllWheels(vehicle) end

---Registers the given command.
---@param name string
---@param func fun(source: integer, args: Array<string>, raw: string)
---@param restricted? boolean
function RegisterCommand(name, func, restricted) end

---Returns the players identifier
---@param player integer
---@param identifiertype 'license'|'steam'|string
---@return string identifier
function GetPlayerIdentifierByType(player, identifiertype) end

---Register a new key mapping.
---@param command string
---@param description string
---@param mapper integer
---@param key string
function ReigsterKeyMapping(command, description, mapper, key) end

---Sets how much boost the vehicle has left.
---@param vehicle vehicle
---@param value number 0.0 - 1.0
function SetVehicleRocketBoostPercentage(vehicle, value) end

---Enables / Disables the vehicles rocket boost
---@param vehicle vehicle
---@param active boolean
function SetVehicleRocketBoostActive(vehicle, active) end

---sets the nitro refill time in seconds
---@param vehicle vehicle
---@param time number time in seconds
function SetVehicleRocketBoostRefillTime(vehicle, time) end

---Set the amount of gravity the vehicle has
---@param vehicle vehicle
---@param gravity number
function SetVehicleGravityAmount(vehicle, gravity) end


---Reduce the grip of the given vehicle
---@param vehicle vehicle
---@param reduceGrip boolean
function SetVehicleReduceGrip(vehicle, reduceGrip) end

---Reduce the traction of the vehicle
---@param vehicle vehicle
---@param reduceTraction number
function SetVehicleReduceTraction(vehicle, reduceTraction) end

---Applies a force to the given entity
---@param entity entity
---@param forceType integer
---@param x number
---@param y number
---@param z number
---@param xOff number
---@param yOff number
---@param zOff number
---@param boneIndex integer
---@param isDirectionRel boolean
---@param ignoreUpVec boolean
---@param isForceRel boolean
---@param p12 boolean
---@param p13 boolean
function ApplyForceToEntity(entity, forceType, x, y, z, xOff, yOff, zOff, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13) end

---Checks if the given permission is set active for the given player
---@param player integer the players server id
---@param permission string the permission to check
function IsPlayerAceAllowed(player, permission) end

---Returns the current rotation of the entity
---@param entity entity
---@param rotationOrder integer
---@return vector3 rotation
function GetEntityRotation(entity, rotationOrder) end

---Sets the entity rotation
---@param entity entity
---@param pitch number
---@param roll number
---@param yaw number
---@param rotationOrder integer
---@param p5 boolean
function SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5) end

---Returns the current velocity of the given entity
---@param entity entity
---@return vector3 velocity
function GetEntityVelocity(entity) end

---Sets the entities velocity
---@param entity entity
---@param x number
---@param y number
---@param z number
function SetEntityVelocity(entity, x, y, z) end

---Returns the current rotational velocity of the entity
---@param entity entity
---@return vector3 velocity
function GetEntityRotationVelocity(entity) end

---Set the entities angular velocity 
---@param entity entity
---@param x number
---@param y number
---@param z number
function SetEntityAngularVelocity(entity, x, y, z) end

---Sets the cameras rotation
---@param cam cam the camera
---@param x number x rotation
---@param y number y rotation
---@param z number z rotation
---@param p4 integer rotation order
function SetCamRot(cam, x, y, z, p4) end

---Destroys the given camera
---@param cam cam the camera to destroy
---@param p1 boolean param indicates whether the cam should be destroyed if it belongs to the calling script. 
function DestroyCam(cam, p1) end

---Checks if the script is running server-side
---@return boolean isServer
function IsDuplicityVersion() end

---Returns the current camera location
---@param cam cam the camera
---@return vector3 location
function GetCamCoord(cam) end

---Returns the rotation of the given camera
---@param cam cam the camera
---@param p1 integer rotation order
---@return vector3 rotation
function GetCamRot(cam, p1) end

---Returns the forward vector of the given rotation
---@param rotation vector3 the rotation
---@return vector3 forwardVector
function GetForwardVector(rotation) end

---Removes the given blip from the minimap
---@param blip blip the blip to remove
function RemoveBlip(blip) end

---Creates a new blip on the minimap with the given coords
---@param x number
---@param y number
---@param z number
---@return blip blip
function AddBlipForCoord(x, y, z) end

---Sets the sprite of the blip
---@param blip blip
---@param sprite integer
function SetBlipSprite(blip, sprite) end

---Sets the color of the blip
---@param blip blip
---@param color integer
function SetBlipColour(blip, color) end

---Sets the scale of the blip
---@param blip blip
---@param scale number
function SetBlipScale(blip, scale) end

---Short range blips are only visible on the minimap when close to the blip
---@param blip blip
---@param shortRange boolean
function SetBlipAsShortRange(blip, shortRange) end

---Starts creation of the blip name
---@param str 'STRING'
function BeginTextCommandSetBlipName(str) end

---Applies the name to the blip
---@param blip blip
function EndTextCommandSetBlipName(blip) end

---Draws a marker with the given data at the given location
---@param type integer
---@param posX number
---@param posY number
---@param posZ number
---@param dirX number
---@param dirY number
---@param dirZ number
---@param rotX number
---@param rotY number
---@param rotZ number
---@param scaleX number
---@param scaleY number
---@param scaleZ number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param bobUpAndDown boolean
---@param faceCamera boolean
---@param p19 integer
---@param rotate boolean?
---@param textureDict string?
---@param textureName string?
---@param drawOnEnts boolean?
function DrawMarker(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts) end

---Removes the given checkpoint
---@param checkpoint checkpoint
function DeleteCheckpoint(checkpoint) end

---Creates a new checkpoint
---@param type integer
---@param posX1 number
---@param posY1 number
---@param posZ1 number
---@param posX2 number
---@param posY2 number
---@param posZ2 number
---@param diameter number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param reserved integer
---@return checkpoint checkpoint
function CreateCheckpoint(type, posX1, posY1, posZ1, posX2, posY2, posZ2, diameter, red, green, blue, alpha, reserved) end

---Returns the street name and crossing hash at the given location
---@param x number
---@param y number
---@param z number
---@return hash streetHash
---@return hash crossingHash
function GetStreetNameAtCoord(x, y, z) end

---Returns the street name from the given hash
---@param hash hash
---@return string streetName
function GetStreetNameFromHashKey(hash) end

---Returns the file content of the given resource file
---@param resourceName string the name of the resource
---@param fileName string the name of the file
function LoadResourceFile(resourceName, fileName) end

---Saves the given data to the given resource file
---@param resourceName string the name of the resource
---@param fileName string the name of the file
---@param data string the data to save
---@param dataLength integer the length of the data (usually -1 for full length)
function SaveResourceFile(resourceName, fileName, data, dataLength) end

---Returns the name of the calling resource.
---@return string invokingResource
function GetInvokingResource() end