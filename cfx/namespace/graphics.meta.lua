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

---**CLIENT**<br>
---Resets the screen's draw-origin which was changed by the function SET_DRAW_ORIGIN back to x=0, y=0. See SET_DRAW_ORIGIN for further information.
function ClearDrawOrigin() end

---**CLIENT**<br>
---Not 100% sure what it dose, but it seems to tell the graphics system which ptfx library should be used for the next call to StartParticleFxLoopedAtCoord.<br>
---All that I know is that it is important to be called before StartParticleFxLoopedAtCoord or the particles won't spawn.
---@param name string the name of the ptfx asset
function UseParticleFxAssetNextCall(name) end

---**CLIENT**<br>
---Starts a particle effect at the specified coordinates.<br>
---Requires the ptfx asset to be loaded using RequestNamedPtfxAsset and UseParticleFxAssetNextCall.
---@param effectName string the name of the effect to start
---@param xPos number
---@param yPos number
---@param zPos number
---@param xRot number
---@param yRot number
---@param zRot number
---@param scale number
---@param xAxis boolean no clue what this does
---@param yAxis boolean no clue what this does
---@param zAxis boolean no clue what this does
---@return particle handle the handle of the particle effect
function StartParticleFxNonLoopedAtCoord(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end


---**CLIENT**<br>
---Stops the specified particle effect.
---@param ptfxHandle particle handle the handle of the particle effect
---@param p1 boolean no clue what this does, according to the natives documentation it is always false / 0
function StopParticleFxLooped(ptfxHandle, p1) end

---**CLIENT**<br>
---Starts a timeclycle modifier (e.g. camera filter) with the specified name.
---@param modifierName string the name of the modifier to start
function SetTimecycleModifier(modifierName) end

---**CLIENT**<br>
---Changes the strength of the currently active timecycle modifier.
---@param strength number the strength of the modifier to set (0.0 - 1.0)
function SetTimecycleModifierStrength(strength) end

---**CLIENT**<br>
---Returns the fist blip id of all blips that has the given sprite id.
---@nodiscard
---@param sprite integer the sprite id to search for
---@return blip blip the first blip id of all blips that has the given sprite id
function GetFirstBlipInfoId(sprite) end

---**CLIENT**<br>
---Returns whether the specified blip exists or not.
---@nodiscard
---@param blip blip the blip to check
---@return boolean exists true if the blip exists, false otherwise
function DoesBlipExist(blip) end

---**CLIENT**<br>
---Returns the coordinates of the specified blip.
---@nodiscard
---@param blip blip the blip to get the coordinates of
---@return vector3 location the coordinates of the blip
function GetBlipInfoIdCoord(blip) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
