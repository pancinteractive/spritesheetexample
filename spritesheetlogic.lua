	local function createPlayer1()
		local sT = 500
		local options = {
		
			width = 32, -- uniform frame width
			height = 34, -- uniform frame height
			numFrames = 9, -- frame amount in sheet
			
			sheetContentWidth = 96, --  total sheet width
			sheetContentHeight = 136 -- total sheet height
		}
		local imageSheet = graphics.newImageSheet( "images/tavisheet1a.png", options ) -- declared name of sheet with options declared as well
		local sequenceData = {
			{ name="heroleft", start=4, count=3, time=sT},  -- frame names that can be called within game
			{ name="heroright", start=4, count=3, time=sT}, -- frame names that can be called within game
			{ name="heroup", start=7, count=3, time=sT}, -- frame names that can be called within game
			{ name="herodown", start=1, count=3, time=sT}, -- frame names that can be called within game
			}
		player1 = display.newSprite( imageSheet, sequenceData, true)
		player1.x = 0
		player1.y = 0
		player1:setSequence("herodown")
		player1:play()
		player1:scale(heroScale,heroScale)
		return player1
	end
