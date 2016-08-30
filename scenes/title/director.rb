﻿module Title
 	class Director
    	def initialize
    		@X = 180
    		@Y = 110
			@SX = 290
			@SY = 450
    		@f = Font.new(50)
			@sf = Font.new(30)
			@alp = 0
			@sw = 0
	    	@bg_img = Image.load("images/background1.png")
	    	@title = "とびゆけ！ぷーすけ！"
	    	@start = "please push space"
	  	end

	  	def play
	    	Window.draw(0,0,@bg_img)
			Window.drawFont(@X,@Y,@title,@f,{:color => [255,255,0]})
			if @sw == 0
				@alp += 3
				if @alp == 255
					@sw = 1
				end
			elsif @sw == 1
				@alp -= 3
				if @alp == 0
					@sw = 0
				end
			end

			Window.drawFont(@SX,@SY,@start,@sf,{:alpha => @alp})

			if Input.keyPush?(K_SPACE) then
				Scene.set_current_scene(:tutorial)
			end
	  	end
	end
end
