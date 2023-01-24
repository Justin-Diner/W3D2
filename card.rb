require 'byebug'
require_relative './board.rb'
require_relative './game.rb'

class Card 
	attr_reader :face_value
	def initialize
		@face_value = ("a".."z").to_a.sample.upcase
		@revealed = false 
	end

	def hide 
		@revealed = false
	end

	def reveal 
		@revealed = true
	end
end