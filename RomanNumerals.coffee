romanNumerals = (num) ->

	return "num is too big!" if num > 3000
	
	DECADE_DATA = [
		["I", "V", "X"],
		["X", "L", "C"],
		["C", "D", "M"],
		["M"]
	]

	result = ""
	numAsAString = num.toString()
	numDigits = numAsAString.length
	currentDecade = numDigits - 1
	for i in [0...numDigits]
		do (i) ->
			digit = Number numAsAString[i]
			[i, v, x] = DECADE_DATA[currentDecade--]
			result += switch digit
				when 1 then i
				when 2 then i + i
				when 3 then i + i + i
				when 4 then i + v
				when 5 then v
				when 6 then v + i
				when 7 then v + i + i
				when 8 then v + i + i + i
				when 9 then i + x
				else ""
	result
