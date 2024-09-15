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
---Returns the bone index for the given bone id on the specified ped.
---@nodiscard
---@param ped ped the ped to get the bone index from
---@param boneID integer the bone id to get the index of
---@return integer boneIndex the bone index
function GetPedBoneIndex(ped, boneID) end

---**CLIENT**<br>
---Sets the maximum time the ped can stay underwater.
---@param ped ped the ped to get the max time underwater from
---@param time number the maximum time the ped can stay underwater
function SetPedMaxTimeUnderwater(ped, time) end

---**CLIENT**<br>
---Puts a prop on the specified ped.
---@param ped ped the ped to put the prop on
---@param propIndex integer the prop index
---@param drawableId integer the drawable id
---@param textureId integer the texture id
---@param attach boolean whether to attach the prop to the ped
function SetPedPropIndex(ped, propIndex, drawableId, textureId, attach) end

---**CLIENT**<br>
---Removes the given prop from the specified ped.
---@param ped ped the ped to remove the prop from
---@param propIndex integer the prop index
function ClearPedProp(ped, propIndex) end

---**CLIENT**<br>
---Returns the texture index of the prop on the specified ped.
---@nodiscard
---@param ped ped the ped to get the prop texture index from
---@param propIndex integer the prop index
---@return integer textureIndex the texture index of the prop
function GetPedPropTextureIndex(ped, propIndex) end

---**CLIENT**<br>
---Returns the prop index of the specified ped.
---@nodiscard
---@param ped ped the ped to get the prop index from
---@param propIndex integer the prop index
function GetPedPropIndex(ped, propIndex) end

---**CLIENT**<br>
---Sets wether or not the ped should react to temporary events (like explosions, beeing hit by a car, etc).
---@param ped ped the ped to set the blocking of non temporary events for
---@param toggle boolean whether to block non temporary events
function SetBlockingOfNonTemporaryEvents(ped, toggle) end

---**CLIENT**<br>
---Overrides facial idle animanation for the ped
---@param ped ped the ped to override animation on
---@param animName string the animation name
---@param animDict integer the animation dictionary (unused by game, value need to be 0 for native to work)
function SetFacialIdleAnimOverride(ped, animName, animDict) end

---**CLIENT**<br>
---Sets the ped's amount of armor.
---@param ped ped the ped to set the armor for
---@param amount integer the amount of armor
function SetPedArmour(ped, amount) end

---**CLIENT**<br>
---Adds a deocration to the specified ped. (e.g. tattoos)
---@param ped ped the ped to add the decoration to
---@param collection hash the collection of the decoration
---@param overlay hash the overlay of the decoration
function AddPedDecorationFromHashes(ped, collection, overlay) end

---**CLIENT**<br>
---Returns whether the specified ped is male or female.
---@nodiscard
---@param ped ped the ped to check
---@return boolean isMale whether the ped
function IsPedMale(ped) end

---**CLIENT**<br>
---Clears all ped decorations (tattoos, don't know what else though) from the specified ped.
---@param ped ped the ped to clear the decorations from
function ClearPedDecorations(ped) end

---**CLIENT**<br>
---Returns the current drawableId for the given component id for the given ped
---@nodiscard
---@param ped ped the ped to get the drawable id from
---@param componentId integer the component id to get the drawable id from
---@return integer drawableId the drawable id
function GetPedDrawableVariation(ped, componentId) end

---**CLIENT**<br>
---Sets the ped's component variation.
---@param ped ped the ped to set the component variation for
---@param componentId integer the component id
---|    0: Head                 -- docs not sure if this is the correct name for this component<br>
---|    1: Mask                 -- docs not sure if this is the correct name for this component<br>
---|    2: Hair                 -- docs not sure if this is the correct name for this component<br>
---|    3: Torso                -- docs not sure if this is the correct name for this component<br>
---|    4: Legs                 -- docs not sure if this is the correct name for this component<br>
---|    5: Arms                 -- docs not sure if this is the correct name for this component<br>
---|    6: Shoes                -- docs not sure if this is the correct name for this component<br>
---|    7: Accessories          -- docs not sure if this is the correct name for this component<br>
---|    8: Accessories 1        -- docs not sure if this is the correct name for this component<br>
---|    9: Accessories 2        -- docs not sure if this is the correct name for this component<br>
---|    10: Decals              -- docs not sure if this is the correct name for this component<br>
---|    11: Tops                -- docs not sure if this is the correct name for this component<br>
---@param drawableId integer the drawable id (default: 0)
---@param textureId integer the texture id (default: 0)
---@param paletteId integer the palette id (default: 0)
function SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
