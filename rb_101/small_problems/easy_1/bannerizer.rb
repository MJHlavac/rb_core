def banner(string)
	horizontal_rule = "+#{'-' * (string.length + 2)}+"
	empty_line = "|#{' ' * (string.length + 2)}|"
	string_line = "  #{string}  "

	puts horizontal_rule
	puts empty_line
	puts string_line
	puts empty_line
	puts horizontal_rule
end

banner("This is a string")