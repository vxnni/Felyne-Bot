module FelyneBot
	module Commands
		module Unstable
			extend Discordrb::Commands::CommandContainer
			command(
					:unstable,
					description: "Unstable quick ref.",
					useage: "unstable"
			) do |event|
				event << "http://i.imgur.com/GXAoXD1.png"
				puts "#{event.timestamp}: #{event.user.name}: CMD: unstable"
				nil
			end
		end
	end
end