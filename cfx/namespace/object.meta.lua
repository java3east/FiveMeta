---@meta OBJECT


--[[ ======================================== ]]--
--[[ ============= **SHARED** =============== ]]--
--[[ ======================================== ]]--

--#region **SHARED**


--#endregion

---[[ ======================================== ]]--
---[[ ============= **CLIENT** =============== ]]--
---[[ ======================================== ]]--

--#region **CLIENT**

---**CLIENT**<br>
---Searches for a door with the specified model hash at the specified position (search radius is 0.5).
---@nodiscard
---@param x number the X component of the position to search at
---@param y number the Y component of the position to search at
---@param z number the Z component of the position to search at
---@param modelHash hash the model hash of the door to search for
---@return boolean found true if a door was found, false otherwise
---@return hash ptr the door handle
function DoorSystemFindExistingDoor(x, y, z, modelHash) end

---**CLIENT**<br>
---Sets the state of the door with the specified handle.
---@param ptr hash the door handle
---@param state 0|1|2|3|4|5|6 the state to set the door to
---@param requestDoor boolean 
---@param forceUpdate boolean whether to force the update
function DoorSystemSetDoorState(ptr, state, requestDoor, forceUpdate) end

---**CLIENT**<br>
---Sets the hold open state of the door with the specified handle.
---@param ptr hash the door handle
---@param toggle boolean whether to hold the door open
function DoorSystemSetHoldOpen(ptr, toggle) end

---**CLIENT**<br>
---Sets the open ratio of the door with the specified handle.
---@param ptr hash the door handle
---@param ajar number the open ratio of the door (-1.0 to 1.0 where 0.0 is closed)
---@param requestDoor boolean
---@param forceUpdate boolean whether to force the update
function DoorSystemSetOpenRatio(ptr, ajar, requestDoor, forceUpdate) end

---**CLIENT**<br>
---Returns whether the physics of the door with the specified handle is loaded.
---@nodiscard
---@param ptr hash the door handle
---@return boolean isLoaded true if the physics is loaded, false otherwise
function DoorSystemGetIsPhysicsLoaded(ptr) end

---**CLIENT**<br>
---Returns the state of the door with the specified handle.
---@nodiscard
---@param ptr hash the door handle
---@return integer state the state of the door (0 - 6)
function DoorSystemGetDoorState(ptr) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
