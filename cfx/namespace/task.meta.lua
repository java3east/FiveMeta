---@meta TASK


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
---Makes the given ped go to the given location
---@param ped ped the ped to make go to the location
---@param x number x coord
---@param y number y coord
---@param z number z coord
---@param speed number the speed at which the npc should walk (default: 1.0)
---@param timeout integer the time in milliseconds to wait before giving up on the task
---@param targetHeading number the heading the npc should have
---@param distanceToSlide number the distance at which the npc will stop walking and slide to the given coords
function TaskGoStraightToCoord(ped, x, y, z, speed, timeout, targetHeading, distanceToSlide) end

---**CLIENT**<br>
---Plays the given animation on the given ped<br>
---*NOTE:<br>
---The dictionary has to be loaded before this is beeing called*<br>
---*FLAGS:*<br>
--- - ANIM_FLAG_NORMAL = 0<br>
--- - ANIM_FLAG_REPEAT = 1<br>
--- - ANIM_FLAG_STOP_AT_LAST_FRAME = 2<br>
--- - ANIM_FLAG_UPPERBODY = 16<br>
--- - ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32<br>
--- - ANIM_FLAG_CANCELABLE = 120<br>
---
---*Odd: loop infinitely<br>
---Even: Freeze at last frame<br>
---Multiple of 4: Freeze at last frame but controllable<br>
---1 - 15: Full Body<br>
---10 - 31: Upper body<br>
---32 - 47: Full body & controllable<br>
---48 - 63: Upper body & controllable<br>
---0 - 255: normal<br>
---256 - 511: Garbled*
---@param ped ped
---@param animDict string
---@param animName string
---@param blendInSpeed number (0.0 - 8.0) (default: 8.0)
---@param blendOutSpeed number  (0.0 - 8.0) (default: 8.0)
---@param duration integer (default: -1) (-1 = infinite)
---@param flag integer
---@param playbackRate number
---@param lockX boolean
---@param lockY boolean
---@param lockZ boolean
function TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ) end

---**CLIENT**<br>
---Clears the ped's tasks (animations, walking, etc.)
---@param ped ped the ped to clear the tasks from
function ClearPedTasks(ped) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
