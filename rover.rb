class Rover
	attr_accessor :name, :x_co_ordinates, :y_co_ordinates, :face
	ORIENTATION = {
		"N" => {
			"L" => "W",
			"R" => "E"
		},
		"E" => {
			"L" => "N",
			"R" => "S"
		},
		"W" => {
			"L" => "S" ,
			"R" => "N"
		},
		"S" => {
			"L" => "E",
			"R" => "W"
		}
	}
	def initialize(name,x,y,f)
		@name = name
		@x_co_ordinates = x
		@y_co_ordinates = y 
		@face = f
	end

	def position
		"#{self.name.upcase} : #{self.x_co_ordinates},#{self.y_co_ordinates} #{self.face}"
	end

	def direction(input)
		if input == "L"
			self.face = ORIENTATION["#{self.face}"]["L"]
		elsif input == "R"	
			self.face = ORIENTATION["#{self.face}"]["R"]
		end
	end

	def move 
		if self.face == "N"
			self.y_co_ordinates += 1
		elsif self.face == "E"
			self.x_co_ordinates += 1
		elsif self.face == "S"
			self.y_co_ordinates -= 1
		elsif self.face == "W"
			self.x_co_ordinates -= 1
		end
	end
end
