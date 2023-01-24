require_relative "./card.rb"
require_relative "./game.rb"


class Board
    def initialize(n)
        @grid = Array.new(n) { Array.new(n, "_") }
        @cards = []
        @size = n * n

    end



    def populate_cards
        half_size = @size/2

        half_size.times do 
            @cards << Card.new
        end

        @cards = @cards.concat(@cards)
    end

    def available?(position)
        row, col = position
        return true if @grid[row][col] == "_"
        false
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