module FelyneBot
	module Commands
		module Ass
			extend Discordrb::Commands::CommandContainer
			command(
					:ass,
					bucket: :delay10,
					description: "Athena's ASS Program fixed by Love2BeHated.",
					useage: "ass"
			) do |event|
				event.respond "Athena's Sweet Sweet ASS."
				event.respond "<https://drive.google.com/folderview?id=0Bw6HvnDSZA82T0xlZlAtVnZ3QlU&usp=sharing>"
				puts "#{event.timestamp}: #{event.user.name}: CMD: ass"
				nil
			end
		end
	end
end