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
        half_size = @size/2
        first_arr = []
        half_size.times { first_arr << Card.new(("A".."Z").to_a.sample) }

        second_arr = []
        first_arr.each_with_index do |ele, i|
            second_arr << Card.new(ele.face_value)
        end
        @cards = first_arr.concat(second_arr).shuffle
    end

    # def available?(position)
    #     row, col = position
    #     return true if @grid[row][col] == "_"
    #     false
    # end

	def populate_grid
        
	end





    #     @grid.each do |sub_arr|
    #         sub_arr.each do |ele|
    #             ele = Card.new



    #         end

    #     end
    # end

end

