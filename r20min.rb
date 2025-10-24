#!/usr/bin/env ruby

class SuperSaudador
	attr_accessor :nomes

	def initialize(nomes = "Cara")
		@nomes = nomes
	end

	def diga_oi
		if @nomes.nil?
			puts "..."
		elsif @nomes.respond_to?("each")
		# @names is a list of some kind, iterate!
			@nomes.each do |nome|
				puts "Olá, #{nome}!"
			end
		else
			puts "Olá, #{@nomes}!"
		end
	end

	def diga_tchau
		if @nomes.nil?
			puts "..."
		elsif @names.respond_to?("join")
			puts "Adeus, #{@nomes.join(", ")}. Volte logo!"
		else
			puts "Adeus, #{nomes}. Volte logo!"
		end
	end
end

if __FILE__ == $0
  mg = SuperSaudador.new
  mg.diga_oi
  mg.diga_tchau

  # Change name to be "Zeke"
  mg.nomes = "Zeke"
  mg.diga_oi
  mg.diga_tchau

  # Change the name to an array of names
  mg.nomes = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.diga_oi
  mg.diga_tchau

  # Change to nil
  mg.nomes = nil
  mg.diga_oi
  mg.diga_tchau
end
