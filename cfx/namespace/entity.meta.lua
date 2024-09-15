---@meta ENTITY


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
---Attaches this entity to another entity.<br>
---@param entity1 entity the entity to attach
---@param entity2 entity the entity to attach to
---@param boneIndex integer the bone index to attach to
---@param x number the X component of the position to attach at
---@param y number the Y component of the position to attach at
---@param z number the Z component of the position to attach at
---@param xRot number the X component of the rotation to attach with
---@param yRot number the Y component of the rotation to attach with
---@param zRot number the Z component of the rotation to attach with
---@param p9 boolean unknown
---@param useSoftPinning boolean if set to false, attached entity will not detach when fixed
---@param collision boolean if set to false, collision will be disabled
---@param isPed boolean should be true if attaching to a ped
---@param rotationOrder integer the order in which the rotation is applied
---@param syncRot boolean if false, the rotation will not be synchronized with the entity it is attached to
function AttachEntityToEntity(entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, rotationOrder, syncRot) end

---**CLIENT**<br>
---Returns the index of the bone. If the bone was not found, -1 will be returned.   
---@nodiscard
---@param entity entity the entity to get the bone index from
---@param boneName string the name of the bone to get the index of
---@return integer boneIndex the bone index
function GetEntityBoneIndexByName(entity, boneName) end

---**CLIENT**<br>
---Checks if the entity is a ped.
---@nodiscard
---@param entity entity the entity to check
---@return boolean isPed true if the entity is a ped, false otherwise
function IsEntityAPed(entity) end

---**CLIENT**<br>
---Detaches the entity from the entity it is attached to.
---@param entity entity the entity to detach
---@param dynamic boolean unknown
---@param collision boolean unknown
function DetachEntity(entity, dynamic, collision) end

---**CLIENT**<br>
---Returns the entity attached to the specified entity.
---@nodiscard
---@param entity entity the entity to get the attached entity from
---@return entity attachedEntity the entity attached to the specified entity
function GetEntityAttachedTo(entity) end

---**CLIENT**<br>
---Returns the entity's heading.
---@nodiscard
---@param entity entity the entity to get the heading of
---@return number heading the entity's heading
function GetEntityHeading(entity) end

---**CLIENT**<br>
---Returns the entity's forward vector.
---@nodiscard
---@param entity entity the entity to get the forward vector of
---@return vector3 forwardVector the entity's forward vector
function GetEntityForwardVector(entity) end

---**CLIENT**<br>
---Returns the entities z-location above the ground.
---@nodiscard
---@param entity entity the entity to get the height of
---@return number height the entity's height above the ground
function GetEntityHeightAboveGround(entity) end

---**CLIENT**<br>
---Returns the entity's matrix.
---@nodiscard
---@param entity entity the entity to get the matrix of
---@return vector3 forward the entity's forward vector
---@return vector3 right the entity's right vector
---@return vector3 up the entity's up vector
---@return vector3 at the entity's at vector
function GetEntityMatrix(entity) end

---**CLIENT**<br>
---Returns the entity's maximum health.
---@nodiscard
---@param entity entity the entity to get the maximum health of
---@return integer maxHealth the entity's maximum health
function GetEntityMaxHealth(entity) end

---**CLIENT**<br>
---Returns the entity's health.
---@nodiscard
---@param entity entity the entity to get the health of
---@return integer health the entity's health
function GetEntityHealth(entity) end

---**CLIENT**<br>
---Returns the current speed of the entity in m/s.
---@nodiscard
---@param entity entity the entity to get the speed of
---@return number speed the entity's speed in m/s
function GetEntitySpeed(entity) end

---**CLIENT**<br>
---Returns the entity's speed vector.
---@nodiscard
---@param entity entity the entity to get the speed vector of
---@param relative boolean if true, the speed vector will be relative to the entity's rotation
---@return vector3 speedVector the entity's speed vector
function GetEntitySpeedVector(entity, relative) end

---**CLIENT**<br>
---Checks if the entity is a mission entity.
---@nodiscard
---@param entity entity the entity to check
---@return boolean isMissionEntity true if the entity is a mission entity, false otherwise
function IsEntityAMissionEntity(entity) end

---**CLIENT**<br>
---Checks if the entity is dead.
---@nodiscard   
---@param entity entity the entity to check
---@return boolean isDead true if the entity is dead, false otherwise
function IsEntityDead(entity) end

---**CLIENT**<br>
---Checks if the entity is in air.
---@nodiscard
---@param entity entity the entity to check
---@return boolean isInAir true if the entity is in air, false otherwise
function IsEntityInAir(entity) end

---**CLIENT**<br>
---Sets the entities alpha level.
---@param entity entity the entity to set the alpha level of
---@param alphaLevel integer the alpha level to set
---@param skin boolean? Whether or not to change the alpha of the entity's skin.
function SetEntityAlpha(entity, alphaLevel, skin) end

---**CLIENT**<br>
---Sets whether the entity can be damaged or not.
---@param entity entity the entity to set the damage state of
---@param toggle boolean whether the entity can be damaged or not
function SetEntityCanBeDamaged(entity, toggle) end

---**CLIENT**<br>
---Sets the entity's collision.
---@param entity entity the entity to set the collision of
---@param toggle boolean whether the entity's collision is enabled or not
---@param keepPhysics boolean whether the entity's physics should be kept
function SetEntityCompletelyDisableCollision(entity, toggle, keepPhysics) end

---**CLIENT**<br>
---Sets the entities health.
---@param entity entity the entity to set the health of
---@param health integer the health to set
function SetEntityHealth(entity, health) end

---**CLIENT**<br>
---Sets the entity's invincibility.
---@param entity entity the entity to set the invincibility of
---@param toggle boolean whether the entity is invincible or not
function SetEntityInvincible(entity, toggle) end

---**CLIENT**<br>
---Sets the entity's max health.    
---@param entity entity the entity to set the max health of
---@param value integer the max health to set
function SetEntityMaxHealth(entity, value) end

---**CLIENT**<br>
---Disables the entity's collision with another entity.
---@param entity1 entity the entity to disable collision for
---@param entity2 entity the entity to disable collision with
---@param thisFrame boolean whether the collision should be disabled for this frame only
function SetEntityNoCollisionEntity(entity1, entity2, thisFrame) end

---**CLIENT**<br>
---Overrides the light state of the traffic light.
---@param entity entity the traffic light to override
---@param state integer the state to set the traffic light to (0 = green, 1 = red, 2 = yellow, 3 = reset)
function SetEntityTrafficlightOverride(entity, state) end

---**CLIENT**<br>
---Returns the proof flags of the given entity.
---@nodiscard
---@param entity entity the entity to get the proof flags of
---@return boolean retval weather the function was successful
---@return boolean bulletProof whether the entity is bullet proof
---@return boolean fireProof whether the entity is fire proof
---@return boolean explosionProof whether the entity is explosion proof
---@return boolean collisionProof whether the entity is collision proof
---@return boolean meleeProof whether the entity is melee proof
---@return boolean steamProof whether the entity is steam proof
---@return boolean p7 unknown
---@return boolean drownProof whether the entity is drown proof
function GetEntityProofs(entity) end

---**CLIENT**<br>
---Sets the proof flags of the given entity.
---@param entity entity the entity to set the proof flags of
---@param bulletProof boolean whether the entity is bullet proof
---@param fireProof boolean whether the entity is fire proof
---@param explosionProof boolean whether the entity is explosion proof
---@param collisionProof boolean whether the entity is collision proof
---@param meleeProof boolean whether the entity is melee proof
---@param steamProof boolean whether the entity is steam proof
---@param p7 boolean unknown
---@param drownProof boolean whether the entity is drown proof
function SetEntityProofs(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof) end

---**CLIENT**<br>
---Marks the entity as owned by this script.
---@param entity entity the entity to mark as owned
---@param scriptHostObject boolean if set to false, the entity will only be protected from despawning (locally).
---@param bGrabFromOtherScript boolean true to set the entity owned by this script. (only works if this client has ownership of the entity)
function SetEntityAsMissionEntity(entity, scriptHostObject, bGrabFromOtherScript) end

---**CLIENT**<br>
---Teleports an entity to specified coordinates directly, with options to maintain certain behaviors post-teleportation.
---@param entity entity the entity to teleport
---@param x number the x-coordinate to teleport to
---@param y number the y-coordinate to teleport to
---@param z number the z-coordinate to teleport to
---@param keepTasks boolean If true, the tasks currently assigned to the ped are not removed upon teleportation. Applies only to peds.
---@param keepIK boolean If true, the Inverse Kinematics (IK) on the ped are not reset upon teleportation. Applies only to peds.
---@param doWarp boolean If false, the entity will maintain continuous motion and will not clear contacts nor create space for itself upon teleportation.
function SetEntityCoordsNoOffset(entity, x, y, z, keepTasks, keepIK, doWarp) end

---**CLIENT**<br>
---Sets the entity's collision state#
---@param entity entity the entity to set the collision state of
---@param toggle boolean whether the entity's collision is enabled or not
---@param keepPhysics boolean whether the entity's physics should be kept
function SetEntityCollision(entity, toggle, keepPhysics) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
