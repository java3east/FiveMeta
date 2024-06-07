---@meta


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
---Returns the entity that the player is aiming at.
---@nodiscard
---@param player integer the player to get the entity the player is aiming at (not the server id, but the player id)
---@return boolean found true if an entity was found, false otherwise
---@return entity entity the entity the player is aiming at
function GetEntityPlayerIsFreeAimingAt(player) end

---**CLIENT**<br>
---Returns the entity the player is targeting (melee lock-on).
---@param player integer the player to get the entity the player is targeting (not the server id, but the player id)
---@return boolean found true if an entity was found, false otherwise
---@return entity entity the entity the player is targeting
function GetPlayerTargetEntity(player) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
