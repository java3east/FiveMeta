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
---Returns the shape test resut including material.
---@param handle integer the handle of the shape test
---@return integer, boolean, vector3?, vector3?, hash?, entity?
function GetShapeTestResultIncludingMaterial(handle) end

---**CLIENT**<br>
---Returns a rayhandle for a new shape test
---@nodiscard
---@param x1 number from
---@param y1 number from
---@param z1 number from
---@param x2 number to
---@param y2 number to
---@param z2 number to
---@param flags integer
---@param entity entity an entity to ignore
---@param p8 integer bit mask for collider types (usually 4)
---@return integer handle the handle of the shape test
function StartExpensiveSynchronousShapeTestLosProbe(x1, y1, z1, x2, y2, z2, flags, entity, p8) end

---**CLIENT**<br>
---Returns the shape test resut.
---@nodiscard
---@param handle integer the handle of the shape test
---@return integer retval (0 = no hit, 1 = hit, 2 = still pending)
---@return boolean hit true if something was hit
---@return vector3 endCoords the hit location
---@return vector3 surfaceNormal the surface normal at the hit location
---@return entity entity the entity that was hit
function GetShapeTestResult(handle) end

---**CLIENT**<br>
---Asynchronously starts a line-of-sight (raycast) world probe shape test.
---@nodiscard
---@param startX number
---@param startY number
---@param startZ number
---@param endX number
---@param endY number
---@param endZ number
---@param flags integer bit mask (All: -1, None: 0, World: 1, Vehicles: 2, Peds: 4, Ragdolls: 8, Objects: 16, Water: 32, Glass: 64, River: 128, Foliage: 256)
---@param entity entity an entity to ignore
---@param options integer bit mask (1, 2, 4, 7 (usually 4 or 7))
---@return integer handle the handle of the shape test
function StartShapeTestLosProbe(startX, startY, startZ, endX, endY, endZ, flags, entity, options) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
