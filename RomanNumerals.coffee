romanNumerals = (num) ->

	if num > 3000
		return "num is too big!"
	
	DECADE_DATA = [
		["I", "V", "X"],
		["X", "L", "C"],
		["C", "D", "M"],
		["M"]
	]

	recursivelyConvert = (num) ->

		numString = num.toString()
		firstDigit = Number numString[0]
		restOfNumString = numString.substr 1
			
		[i, v, x] = DECADE_DATA[restOfNumString.length]
		
		firstConvertedDigit = switch firstDigit
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

		restOfConvertedDigits = if restOfNumString isnt "" then recursivelyConvert Number restOfNumString else ""
		firstConvertedDigit + restOfConvertedDigits
		
	recursivelyConvert num
