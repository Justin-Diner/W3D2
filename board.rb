require 'byebug'
require_relative "card.rb"
require_relative "game.rb"

class Board
	attr_reader :available_spots, :cards
    def initialize(n)
        @grid = Array.new(n) { Array.new(n, "_") }
        @size = n * n
		@cards = []
		@available_spots 
    end

    def populate_cards
        half_size = @size / 2
	
        half_size.times { @cards << Card.new }

		temp = @cards
       @cards.concat(temp)
    end

    def available?(position)
        row, col = position
        return true if @grid[row][col] == "_"
        false
    end

	def populate
		(0...@grid.length).each do |i|
			(0...@grid.length).each do |j|
				if @grid[i][j] == "_"
					@grid[i][j] = @cards
				end
			end
		end
	end

    # def populate_grid
    #     @cards.samp
            
    # end



    #     @grid.each do |sub_arr|
    #         sub_arr.each do |ele|
    #             ele = Card.new



    #         end

    #     end
    # end

end

