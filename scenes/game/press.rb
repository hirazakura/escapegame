class Press < Sprite
	WIDTH = 800 #yoko

	def initialize(x,y,type)
		@move_flag = true
		@dy = 2
		@dx = 4
		@type = type
		x1 = 0
		y1 = 0
		x2 = WIDTH
		@height = 300
		image = Image.new(WIDTH,@height)
		image.box_fill(x1,y1,x2,@height,[100,100,100])
		super(x,y,image) #call sprite initialize
	end




	def update
		if @move_flag == true
			if @type == 1
				#上半分の上下
				self.y += @dy #taiyaki
				@dy = -@dy if y > -100 || y < -200
			elsif @type == 2
				# 下半分の上下
				self.y -= @dy
				@dy = -@dy if y  > 500 || y < 400
			elsif @type == 3
				# 上から下への上下
				# self.setHeight(600)
				self.y += @dy
				@dy = -@dy if y > 50 || y < 400
			end
			self.x -= @dx
		end
	end

	def move_stop
		@move_flag = false
	end

	def move_start
		@move_flag = true
	end
end