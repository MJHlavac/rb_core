def prompt(msg)
	puts "=> #{msg}"
end

prompt("Enter a noun:")
noun = gets.chomp

prompt("Enter a verb:")
verb = gets.chomp

prompt("Enter an adjective:")
adjective = gets.chomp

prompt("Enter an adverb:")
adverb = gets.chomp

prompt("Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!")
prompt("The #{adjective} #{noun} #{verb}s #{adverb}, I get it dawg you can shut up now.")