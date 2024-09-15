---@meta ENTITY


--[[ ======================================== ]]--
--[[ ============= **SHARED** =============== ]]--
--[[ ======================================== ]]--

--#region **SHARED**


--#endregion

---[[ ======================================== ]]--
---[[ ============= **CLIENT** =============== ]]--
---[[ ======================================== ]]--

---**CLIENT**<br>
---Sets the cameras field of view.
---@param cam cam the camera to set the field of view for
---@param fov number (1.0 - 130.0) the field of view to set in degrees
function SetCamFov(cam, fov) end

---**CLIENT**<br>
---Sets a camera inactive / active (this is not the rendering state of the camera).<br>
---*To be honest no clue what it exaclty means, just that rendering won't work if it ain't active*
---@param cam cam the camera to set the active state for
---@param active boolean whether the camera should be active or not
function SetCamActive(cam, active) end

---**CLIENT**<br>
---Sets the location where the camera should look at.
---@param cam cam the camera to set the location to look at
---@param x number x coord
---@param y number y coord
---@param z number z coord
function PointCamAtCoord(cam, x, y, z) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
