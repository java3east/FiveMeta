---@meta NETWORK


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
---Revives this player if they are dead.<br>
---*NOTE: it is unclear wheater or not this only works if the ped is actually dead / what heappens if not, may need some further testing.*
---@param x number the X component of the position to spawn at
---@param y number the Y component of the position to spawn at
---@param z number the Z component of the position to spawn at
---@param heading number the heading to spawn at
---@param nInvincibilityTime integer | boolean? *unclear if it is an integer or boolean, the fivem docs state it should be an integer, but in the `spawnmanager` this is a boolean, and if it is a boolean, no idea what it dose. If this should be an integer representing the time the player stays invincible, it is unclear if this is in minutes or seconds*
---@param bLeaveDeadPed boolean? Whether to leave the dead ped or not
---@param bUnpauseRenderPhase boolean? The documentation says that this will unpause the render phase, whatever that means...<br>Please add some more information if you have any.
---@param iSpawnLocation integer? This is an enum value (eSpawnLocation)
---@param iSpawnReason integer? This is an enum value (eSpawnReason)
function NetworkResurrectLocalPlayer(x, y, z, heading, nInvincibilityTime, bLeaveDeadPed, bUnpauseRenderPhase, iSpawnLocation, iSpawnReason) end

---**CLIENT**<br>
---Returns the Player associated to a given Ped when in an online session.
---@nodiscard
---@param ped ped the ped to get the player from
---@return player player the player index
function NetworkGetPlayerIndexFromPed(ped) end

---**CLIENT**<br>
---Sets the time of day
---@param Hours number The hour
---@param Minutes number The minute
---@param Seconds number The second
function NetworkOverrideClockTime(Hours, Minutes, Seconds) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
