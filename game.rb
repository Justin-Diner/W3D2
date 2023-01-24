require_relative 'board.rb'
require_relative 'card.rb'

class Game

    def initialize
        @board = Board.new(self.board_init)

    end

    def board_init
        puts "enter a board size (even)"
        gets.chomp.to_i
    end

    def play
        while !@board.winner?
            @board.print_grid
            self.get_position


    end

    def get_position #has to return array of num, input _ _
        puts "enter 2 numbers with space"
        gets.chomp.split(" ").map(&:to_i)
    end

end