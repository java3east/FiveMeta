---@meta CFX


--[[ ======================================== ]] --
--[[ ============= **SHARED** =============== ]] --
--[[ ======================================== ]] --

--#region **SHARED**

---**SHARED**<br>
---Adds a handler for changes to a state bag.<br>
---*example:* [FiveM Docs](https://docs.fivem.net/natives/?_0x5BA35AAF)
---@param keyFilter string? The key to check for, or null for no filter.
---@param bagFilter string? The bag ID to check for such as entity:65535, or null for no filter.
---@param handler fun(bagName: string, key: string, value: any, reserved: number, replicated: boolean)
---* `bagName`: The internal bag ID for the state bag which changed. This is usually player:Source, entity:NetID or localEntity:Handle.<br>
---* `key`: The changed key<br>
---* `value`: The new value stored at key.<br>
---* `reserved`: Reserved for future use.<br>
---* `replicated`: Whether the set is meant to be replicated. *(honesly, no clue what this is supposed to mean)*<br>
---@return integer cookie The handler ID to use with RemoveStateBagChangeHandler
function AddStateBagChangeHandler(keyFilter, bagFilter, handler) end

---**SHARED**<br>
---Removes a handler for changes to a state bag.<br>
---@param cookie integer The handler ID returned by AddStateBagChangeHandler
function RemoveStateBagChangeHandler(cookie) end

---**SHARED**<br>
---Checks if the entity's position is frozen.
---@nodiscard
---@param entity entity the entity to check
---@return boolean true if the entity's position is frozen, false otherwise
function IsEntityPositionFrozen(entity) end

---**SHARED**<br>
---Returns the value of the requested metadata key for the given resource.<br>
---@nodiscard
---@param resource string the resource name
---@param key string the metadata key
---@param index integer the index of the metadata key
---@return string value the value of the metadata key
function GetResourceMetadata(resource, key, index) end

---**SHARED**<br>
---Returns the resource kvp (saved locally) for the given key
---@nodiscard
---@param key string
---@return number value
function GetResourceKvpFloat(key) end

---**SHARED**<br>
---Sets the resource kvp (saved locally) for the given key
---@param key string
---@param value number
function SetResourceKvpFloat(key, value) end

---**SHARED**<br>
---Returns the resource kvp (saved locally) for the given key
---@nodiscard
---@param key string
---@return number value
function GetResourceKvpString(key) end

---**SHARED**<br>
---Sets the resource kvp (saved locally) for the given key
---@param key string
---@param value number
function SetResourceKvpString(key, value) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **CLIENT** =============== ]]--
---[[ ======================================== ]]--

--#region **CLIENT**

---**CLIENT**<br>
---Returns the entity's owner on the network. This is usually the player that created the entity.<br>
---*Only the netowrk owner / server can modify the entity*<br>
---@nodiscard
---@param entity entity the entity to get the owner of
---@return integer owner the player/slot ID of the entity owner.
function NetworkGetEntityOwner(entity) end

---**CLIENT**<br>
---Sets the entity's matrix.<br>
---@param entity entity the entity to set the matrix of
---@param forwardX number the X component of the forward vector
---@param forwardY number the Y component of the forward vector
---@param forwardZ number the Z component of the forward vector
---@param rightX number the X component of the right vector
---@param rightY number the Y component of the right vector
---@param rightZ number the Z component of the right vector
---@param upX number the X component of the up vector
---@param upY number the Y component of the up vector
---@param upZ number the Z component of the up vector
---@param atX number the X component of the at vector
---@param atY number the Y component of the at vector
---@param atZ number the Z component of the at vector
function SetEntityMatrix(entity, forwardX, forwardY, forwardZ, rightX, rightY, rightZ, upX, upY, upZ, atX, atY, atZ) end

---**CLIENT**<br>
---Returns the server id for the given client player id.
---@nodiscard
---@param player integer the player id to get the server id of
---@return player serverId the server id of the player
function GetPlayerServerId(player) end

---**CLIENT**<br>
---Enable / Disable drawing an outline around the entity.
---@param entity entity the entity to draw the outline around
---@param enabled boolean true to enable the outline, false to disable
function SetEntityDrawOutline(entity, enabled) end

---**CLIENT**<br>
---Sets the color of the entity's outline. (default: r: 255, g: 0, b: 255, a: 255)
---@param entity entity the entity to set the outline color of
---@param r integer the red component of the color
---@param g integer the green component of the color
---@param b integer the blue component of the color
---@param a integer the alpha component of the color
function SetEntityDrawOutlineColor(entity, r, g, b, a) end

---**CLIENT**<br>
---Returns the ped's eye color.
---@nodiscard
---@param ped ped the ped to get the eye color from
---@return integer eyeColor the eye color
function GetPedEyeColor(ped) end

---**CLIENT**<br>
---Returns the ped's face feature.
---@nodiscard
---@param ped ped the ped to get the face feature from
---@param index integer the index of the face feature
---@return number value the face feature value
function GetPedFaceFeature(ped, index) end

---**CLIENT**<br>
---Returns the ped's hair color.
---@nodiscard
---@param ped ped the ped to get the hair color from
---@return integer hairColor the hair color (-1 on error)
function GetPedHairColor(ped) end

---**CLIENT**<br>
---Returns the ped's hair highlight color.
---@nodiscard
---@param ped ped the ped to get the hair highlight color from
---@return integer highlightColor the hair highlight color
function GetPedHairHighlightColor(ped) end

---**CLIENT**<br>
---Stops the loading screen NUI.
function ShutdownLoadingScreenNui() end

---**CLIENT**<br>
---Sets whether or not the UI has focus and or a cursor.
---@param hasFocus boolean whether the UI has focus
---@param hasCursor boolean whether the UI has a cursor
function SetNuiFocus(hasFocus, hasCursor) end

---**CLIENT**<br>
---Sets whether or not the normal game controls should still be active when the UI has focus.
---@param keepInput boolean whether the normal game controls should still be active
function SetNuiFocusKeepInput(keepInput) end

---**CLIENT**<br>
---Runs a command as this player.
---@param command string the command to run
function ExecuteCommand(command) end

---Returns a list of all active players on the server.
---@nodiscard
---@return player[] players an array of player handles (the player server ids)
function GetActivePlayers() end

---**CLIENT**<br>
---Returns the world coord for the given screen coord
---@nodiscard
---@param screenX number
---@param screenY number
---@return number x
---@return number y
---@return number z
---@return number normalX
---@return number normalY
---@return number normalZ
function GetWorldCoordFromScreenCoord(screenX, screenY) end

---**CLIENT**<br>
---Returns the current location of the mouse on the screen.
---@nodiscard
---@return number x
---@return number y
function GetNuiCursorPosition() end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**

---**SERVER**<br>
---Creates a new entity.<br>
---@nodiscard
---@param pedType integer (unused 0)
---@param modelHash hash the model hash for the entity
---@param x number the X coordinate for the entity
---@param y number the Y coordinate for the entity
---@param z number the Z coordinate for the entity
---@param heading number the heading for the entity
---@param isNetwork boolean whether the entity is networked
---@param bScriptHostPed boolean Whether to register the ped as pinned to the script host in the R* network model.
---@return ped ped the entity handle
function CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, bScriptHostPed) end

---@class HttpRequest
---@field address string The IP address of the request sender.
---@field headers Dictionary<string, string>  The headers sent with the request.
---@field method string The request method.
---@field path string The path to where the request was sent.
---@field setDataHandler fun(handler: fun(data: string))  Sets the handler for when a data body is passed with the request. Additionally you can pass the 'binary' argument to receive a BufferArray in JavaScript or System.Byte[] in C# (has no effect in Lua).
---@field setCancelHandler fun(handler: fun()) Sets the handler for when the request is cancelled.

---@class HttpResponse
---@field writeHead fun(code: integer, headers: Dictionary<string, string>|string[]?)  Sets the status code & headers of the response. Can be only called once and won't work if called after running other response functions.
---@field write fun(data: string) Writes to the response body without sending it. Can be called multiple times.
---@field send fun(data: string?) Writes to the response body and then sends it along with the status code & headers, finishing the request.


---**SERVER**<br>
---Sets the handler for HTTP requests made to the executing resource.<br>
---Example request URL: http://localhost:30120/http-test/ping - this request will be sent to the http-test resource with the /ping path.
---@param handler fun(req: HttpRequest, res: HttpResponse) The handler function to call when a request is made.
function SetHttpHandler(handler) end

---**SERVER**<br>
---@nodiscard
---Returns an array of all known vehicle handles.
---@return vehicle[] vehicles an array of vehicle handles
function GetAllVehicles() end

---**SERVER**<br>
---Creates a new vehicle on the server (better for networking than CreateVehicle).<br>
---@nodiscard
---@param modelHash hash the model hash for the vehicle
---@param type string|"automobile"|"bike"|"boat"|"heli"|"plane"|"submarine"|"trailer"|"train" the type of the vehicle
---@param x number the X coordinate for the vehicle
---@param y number the Y coordinate for the vehicle
---@param z number the Z coordinate for the vehicle
---@param heading number the heading for the vehicle
---@return vehicle vehicle the vehicle handle
function CreateVehicleServerSetter(modelHash, type, x, y, z, heading) end

---**SERVER**<br>
---Checks if the given player exists.
---@nodiscard
---@param source player the player server id
---@return boolean exists true if the player exists, false otherwise
function DoesPlayerExist(source) end

---**SERVER**<br>
---Returns the numberplate text of the given vehicle.
---@nodiscard
---@param vehicle vehicle the vehicle to get the numberplate text from
---@return string plateText the numberplate text
function GetVehicleNumberPlateText(vehicle) end

---**SERVER**<br>
---Sets the numberplate text of the given vehicle.
---@param vehicle vehicle the vehicle to set the numberplate text of
---@param plateText string the numberplate text
function SetVehicleNumberPlateText(vehicle, plateText) end

---**SERVER**<br>
---Runs a command as the server console.
---@param command string the command to run
function ExecuteCommand(command) end

---**SERVER**<br>
---Enables / disables the population of a routing bucket.<br>
---@param bucketId integer the pucket id (also known as dimension)
---@param mode boolean true to enable the population, false to disable
function SetRoutingBucketPopulationEnabled(bucketId, mode) end

---**SERVER**<br>
---Stops the given resource.
---@param resource string the resource name
---@return boolean success some boolean (success I guess?)
function StopResource(resource) end

---**SERVER**<br>
---Removes all weapons from the given ped.
---@param ped ped the ped to remove the weapons from
---@param p1 unknown? documentation states that this prameter is ignored, but who knows...
function RemoveAllPedWeapons(ped, p1) end

---**SERVER**<br>
---Gives the given ped a weapon.
---@param ped ped the ped to give the weapon to
---@param weaponHash hash the weapon hash
---@param ammoCount integer the ammo count
---@param isHidden boolean whether the weapon is hidden
---@param equipNow boolean whether to equip the weapon now
function GiveWeaponToPed(ped, weaponHash, ammoCount, isHidden, equipNow) end

---**SERVER**<br>
---Gives the given ped a weapon component.
---@param ped ped the ped to give the weapon component to
---@param weaponHash hash the weapon hash
---@param componentHash hash the component hash
function GiveWeaponComponentToPed(ped, weaponHash, componentHash) end

---**SERVER**<br>
---Sets the ammo of the given ped's weapon.
---@param ped ped the ped to set the ammo of
---@param weaponHash hash the weapon hash
function SetPedAmmo(ped, weaponHash, ammoCount) end

---**SERVER**<br>
---Creates a new object
---@param modelHash hash
---@param x number
---@param y number
---@param z number
---@param isNetwork boolean?
---@param netMissionEntity boolean?
---@param doorFlag boolean?
---@return object object
function CreateObject(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

---**SERVER**<br>
---Returns an array of all players currently on the server
---@nodiscard
---@return player[] players an array of player server ids
function GetPlayers() end

--#endregion
