---@meta GRAPHICS


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
---Activates or deactivates the nightvision effect.
---@param toggle boolean true to activate nightvision, false to deactivate
function SetNightvision(toggle) end

---**CLIENT**<br>
---Sets the heat strength of the thermal vision effect.
---@param index integer (0-3) the index of the heat scale to set
---@param heatscale number the heat scale to set
function SeethroughSetHeatscale(index, heatscale) end

---**CLIENT**<br>
---Activates or deactivates the see-through effect.
---@param toggle boolean true to activate see-through, false to deactivate
function SetSeeThrough(toggle) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
