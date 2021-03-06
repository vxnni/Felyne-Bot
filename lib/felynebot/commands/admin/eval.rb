module FelyneBot
	module Commands
		module Eval
			extend Discordrb::Commands::CommandContainer
			command(
					:eval,
					description: "Evaluates code.",
					useage: "eval <code>",
					help_available: false,
					permission_level: 800,
					permission_message: "I'm sorry Dave, I cannot do that.",
			) do |event, *code|
				puts "#{event.timestamp}: #{event.user.name}: CMD: eval <#{code.join(' ')}>"
				begin
					eval code.join(' ')
				rescue StandardError => e
					event.respond(e.to_s)
				end
			end
		end
	end
end