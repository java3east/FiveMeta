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
---Creates a blip with a radius for the specified coordinates
---@nodiscard
---@param x number The x coordinate
---@param y number The y coordinate
---@param z number The z coordinate
---@param radius number The radius of the blip
---@return blip blip The blip handle
function AddBlipForRadius(x, y, z, radius) end

---**CLIENT**<br>
---Sets the alpha of the blip
---@param blip blip The blip handle
---@param alpha number The alpha value
function SetBlipAlpha(blip, alpha) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
