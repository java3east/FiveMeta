---@meta


--[[ ======================================== ]]--
--[[ ============= **SHARED** =============== ]]--
--[[ ======================================== ]]--

--#region **SHARED**

---**SHARED**<br>
---Adds a handler for changes to a state bag.<br>
---*example:* [FiveM Docs](https://docs.fivem.net/natives/?_0x5BA35AAF)
---@param keyFilter string The key to check for, or null for no filter.
---@param bagFilter string The bag ID to check for such as entity:65535, or null for no filter.
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

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
