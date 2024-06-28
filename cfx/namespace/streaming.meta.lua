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
---Starts loading the requested model
---@param model hash the model hash to load
function RequestModel(model) end

---**CLIENT**<br>
---Returns whether the requested model has been loaded
---@nodiscard
---@param model hash the model hash to check
---@return boolean hasModelLoaded true if the model has been loaded, false otherwise
function HasModelLoaded(model) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
