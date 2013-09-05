romanNumerals = (num) ->

	return "num is too big!" if num > 3000
	
	DECADE_DATA = [
		["I", "V", "X"],
		["X", "L", "C"],
		["C", "D", "M"],
		["M"]
	]

	result = ""
	numString = num.toString()
	numDigits = numString.length
	decadeIndex = numDigits - 1
	for char in numString
		[i, v, x] = DECADE_DATA[decadeIndex--]
		result += switch char
			when "1" then i
			when "2" then i + i
			when "3" then i + i + i
			when "4" then i + v
			when "5" then v
			when "6" then v + i
			when "7" then v + i + i
			when "8" then v + i + i + i
			when "9" then i + x
			else ""
	result
