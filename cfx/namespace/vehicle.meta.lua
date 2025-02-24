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

---Returns the vehicle class of the given vehicle
---@param vehicle vehicle
---@return integer (0: Compacts, 1: Sedans, 2: SUVs, 3: Coupes  4: Muscle  5: Sports Classics  6: Sports  7: Super  8: Motorcycles  9: Off-road  10: Industrial  11: Utility  12: Vans  13: Cycles  14: Boats  15: Helicopters  16: Planes  17: Service  18: Emergency  19: Military  20: Commercial  21: Trains  22: Open Wheel)
function GetVehicleClass(vehicle) end

---**CLIENT**
---Returns the display name of the vehicle model
---@nodiscard
---@param modelHash integer
---@return string
function GetDisplayNameFromVehicleModel(modelHash) end

---**CLIENT**
---Opens the door of the given vehicle
---@param vehicle vehicle the vehicle to open the door of
---@param doorIndex integer the index of the door to open
---@param loose boolean if lose the door can be closed more easily again
---@param opneInstantly boolean if the door should open instantly
function SetVehicleDoorOpen(vehicle, doorIndex, loose, opneInstantly) end

---**CLIENT**
---Closes the door of the given vehicle
---@param vehicle vehicle the vehicle to close the door of
---@param doorIndex integer the index of the door to close
---@param closeInstantly boolean if the door should close instantly
function SetVehicleDoorShut(vehicle, doorIndex, closeInstantly) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**

--#endregion
