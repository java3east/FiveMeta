---@meta CFX


--[[ ======================================== ]]--
--[[ ============= **SHARED** =============== ]]--
--[[ ======================================== ]]--

--#region **SHARED**

--#endregion

---[[ ======================================== ]]--
---[[ ============= **CLIENT** =============== ]]--
---[[ ======================================== ]]--

--#region **CLIENT**

---**CLIENT**
---Sets the transform state of the Oppressor MK2's wings. And allows the vehicle to fly.
---@param vehicle vehicle?
---@param extend boolean
function SetOppressorTransformState(vehicle, extend) end

---**CLIENT**
---Fixes the given vehicle
---@param vehicle vehicle the vehicle to fix
function SetVehicleFixed(vehicle) end

---**CLIENT**
---Removes all deformations from the vehicle
---@param vehicle vehicle
function SetVehicleDeformationFixed(vehicle) end

---**CLIENT**
---Sets how dirty the vehicle is
---@param vehicle vehicle
---@param dirtLevel number 0.0 - 15.0
function SetVehicleDirtLevel(vehicle, dirtLevel) end

---**CLIENT**
---Sets the vehicle's engine health
---@param vehicle vehicle
---@param health number 0.0 - 1000.0 (gas leak at ~650)
function SetVehicleEngineHealth(vehicle, health) end

---**CLIENT**
---Sets the body health of the vehicle
---@param vehicle vehicle
---@param health number 0.0 - 1000.0
function SetVehicleBodyHealth(vehicle, health) end

---**CLIENT**
---Sets the vehicle's petrol tank health
---@param vehicle vehicle
---@param health number 0.0 - 1000.0
function SetVehiclePetrolTankHealth(vehicle, health) end

---**CLIENT**
---Sets whether the vehicle is undriveable or not
---@param vehicle vehicle
---@param undriveable boolean
function SetVehicleUndriveable(vehicle, undriveable) end

---**CLIENT**
---Sets the vehicle's engine state
---@param vehicle vehicle the vehicle to set the engine state of
---@param engineOn boolean whether the engine should be on or off
---@param instant boolean whether the engine state should be set instantly
---@param disableAutoStart boolean whether the engine should be disabled from starting automatically
function SetVehicleEngineOn(vehicle, engineOn, instant, disableAutoStart) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**

--#endregion
