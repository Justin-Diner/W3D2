require 'byebug'
require_relative './board.rb'
require_relative './game.rb'

class Card 
	attr_reader :face_value
	def initialize
		@face_value = ("a".."z").to_a.sample.upcase
		@face_up = false 
	end

	def hide 
		@face_up = false
	end

	def reveal 
		@face_up = true
	end

	def ==(card)
		self.face_value == card.face_value
	end
end
