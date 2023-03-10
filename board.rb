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
		self.populate_cards
		self.populate_grid
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
		counter = 0

		while counter < @size
			(0...@grid.length).each do |row|
				(0...@grid.length).each do |col|
					position = @grid[row][col]
					if position == "_"
						@grid[row][col] = @cards[counter]
						counter +=1 
					end
				end
			end
		end
	end

	def print_grid
		current_board = []

		@grid.each do |subArr|
			house = []
			subArr.each do |card|
				if card.face_up 
				 	house << card.face_value
				else 
					house << "_"
				end
			end
		current_board << house
		end
		
		current_board.each do |row|
			puts row.join(" ") + "\n"
		end
	end

	def winner?(card1, card2)
		return true if card1.face_value == card2.face_value
        false
	end


    def allfaceup
        @grid.each do |row|
            row.each do |card|
                card.reveal
            end
        end
    end

    def reveal_chosen(position) #[1, 2]
        row, col = position

        card = @grid[row][col]
        if !card.face_up
            card.reveal
            return card.face_value
        end

    end


end

