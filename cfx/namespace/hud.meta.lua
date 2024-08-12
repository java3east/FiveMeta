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
---Creates a blip with a radius for the specified coordinates
---@nodiscard
---@param x number The x coordinate
---@param y number The y coordinate
---@param z number The z coordinate
---@param radius number The radius of the blip
---@return blip blip The blip handle
function AddBlipForRadius(x, y, z, radius) end

---**CLIENT**<br>
---Sets the alpha of the blip
---@param blip blip The blip handle
---@param alpha number The alpha value
function SetBlipAlpha(blip, alpha) end

---**CLIENT**<br>
---Disable / Enable the radar
---@param bool boolean The state of the radar
function DisplayRadar(bool) end

---**CLIENT**<br>
---Sets the text color for the HUD (e.g. 3d text)
---@param r integer 0 - 255 red
---@param g integer 0 - 255 green
---@param b integer 0 - 255 blue
---@param a integer 0 - 255 alpha
function SetTextColour(r, g, b, a) end

---**CLIENT**<br>
---Enables text input for the hud (e.g. 3d text)
---@param text 'STRING'|'TWOSTRINGS'|'NUMBER'|'PERCENTAGE'|'FO_TWO_NUM'|'ESMINDOLLA'|'ESDOLLA'|'MTPHPER_XPNO'|'AHD_DIST'|'CMOD_STAT_0'|'CMOD_STAT_1'|'CMOD_STAT_2'|'CMOD_STAT_3'|'DFLT_MNU_OPT'|'F3A_TRAFDEST'|'ES_HELP_SOC3'
function BeginTextCommandDisplayText(text) end

---**CLIENT**<br>
---After applying the properties to the text (See UI::SET_TEXT_), this will draw the text in the applied position. Also 0.0f < x, y < 1.0f, percentage of the axis.
---@param x number 0.0 - 1.0
---@param y number 0.0 - 1.0
function EndTextCommandDisplayText(x, y) end

---**CLIENT**<br>
---Draws a rectangle on the screen
---*NOTE:<br>*
---*The total number of rectangles to be drawn in one frame is apparently limited to 399.*
---@param x number The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)  
---@param y number The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)
---@param width number The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)
---@param height number The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)
---@param r integer 0 - 255 red
---@param g integer 0 - 255 green
---@param b integer 0 - 255 blue
---@param a integer 0 - 255 alpha
function DrawRect(x, y, width, height, r, g, b, a) end

--#endregion

---[[ ======================================== ]]--
---[[ ============= **SERVER** =============== ]]--
---[[ ======================================== ]]--

--#region **SERVER**



--#endregion
