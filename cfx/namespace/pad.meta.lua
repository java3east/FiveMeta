---@meta PED


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
---Returns whether the specified pad index is using the keyboard.
---@nodiscard
---@param padIndex integer the pad index to check
---@return boolean isUsingKeyboard true if the pad is using the keyboard
function IsUsingKeyboard(padIndex) end

---**CLIENT**<br>
---Disables all control actions for the specified pad index.<br>
---Not sure if this is required to be called every frame or just once.
---@param padIndex integer
---|0 Player control
---|1 ?
---|2 frontend control
function DisableAllControlActions(padIndex) end

---**CLIENT**<br>
---Enables all control actions for the specified pad index.<br>
---@param padIndex integer
---|0 Player control
---|1 ?
---|2 frontend control
function EnableAllControlActions(padIndex) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
