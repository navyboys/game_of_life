class Game
 
 	def initialize(original)
    @origin_grid = original
    @length = @origin_grid.length
		init_grid
  end

  def next_gen
		@length.times do |i|
			if alive?(i) && has_2_alive_neighbours?(i)
				set_new_alive(i) 
			end 
		end
		@new_grid	
  end

	private

	def init_grid 
		@new_grid = @length.times.map { [0] }
	end

	def set_new_alive(i)
		@new_grid[i] = [1]
		@new_grid
	end

	def alive?(i)
		@origin_grid[i] == [1]
	end

	def has_2_alive_neighbours?(i)
	  left_alive?(i) && right_alive?(i)
	end

	def left_alive?(i)
		i > 0 && @origin_grid[i-1] == [1]
	end

	def right_alive?(i)
		i < (@length-1) && @origin_grid[i+1] == [1]
	end

end
