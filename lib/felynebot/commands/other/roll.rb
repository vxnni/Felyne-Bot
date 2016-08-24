module FelyneBot
	module Commands
		module Roll
			extend Discordrb::Commands::CommandContainer
			command(
					:roll,
					bucket: :delay10
			) do |event, number|
				if number == nil
					number = 6
				end
				event.respond "A D#{number.to_i} is rolled: #{rand(1..number.to_i)}"
				puts "#{event.timestamp}: #{event.user.name}: CMD: roll"
				nil
			end
		end
	end
end