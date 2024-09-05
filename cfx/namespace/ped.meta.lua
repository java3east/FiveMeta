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

---Returns whether the specified ped is male or female.
---@nodiscard
---@param ped ped the ped to check
---@return boolean isMale whether the ped
function IsPedMale(ped) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
