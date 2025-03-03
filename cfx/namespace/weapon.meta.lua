---@meta CFX


--[[ ======================================== ]] --
--[[ ============= **SHARED** =============== ]] --
--[[ ======================================== ]] --

--#region **SHARED**

--#endregion

---[[ ======================================== ]]--
---[[ ============= **CLIENT** =============== ]]--
---[[ ======================================== ]]--

--#region **CLIENT**

---**CLIENT**
---Returns the weapon the given ped is currently holding
---@nodiscard
---@param ped ped the ped to get the wepaon from
---@return hash the weapon hash
function GetSelectedPedWeapon(ped) end

---**CLIENT**
---Returns the amount of ammo in the given ped's weapon
---@nodiscard
---@param ped ped the ped to get the ammo from
---@param weaponHash hash the weapon hash
---@return integer the amount of ammo in the weapon
function GetAmmoInPedWeapon(ped, weaponHash) end

---**CLIENT**
---Returns the amount one clip can hold for the given weapon
---@nodiscard
---@param ped ped the ped to get the max ammo from
---@param weaponHash hash the weapon hash
---@param p2 boolean unknown (mostly 1/true in scripts)
function GetMaxAmmoInClip(ped, weaponHash, p2) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**

--#endregion
