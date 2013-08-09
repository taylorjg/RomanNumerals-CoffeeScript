romanNumerals = (num) ->

	if num > 3000
		return "num is too big!"
	
	DECADE_DATA = [
		["I", "V", "X"],
		["X", "L", "C"],
		["C", "D", "M"],
		["M"]
	]

	handleFirstDigit = (numString) ->
	
		result = ""
		
		numStringLength = numString.length
		if numStringLength is 0
			return result
			
		dataForThisDecade = DECADE_DATA[numStringLength - 1]
		oneChar = dataForThisDecade[0]
		fiveChar = dataForThisDecade[1]
		tenChar = dataForThisDecade[2]
		
		digit = Number numString[0]

		switch Number numString[0]
			when 1
				result += oneChar
			when 2
				result += oneChar + oneChar
			when 3
				result += oneChar + oneChar + oneChar
			when 4
				result += oneChar + fiveChar
			when 5
				result += fiveChar
			when 6
				result += fiveChar + oneChar
			when 7
				result += fiveChar + oneChar + oneChar
			when 8
				result += fiveChar + oneChar + oneChar + oneChar
			when 9
				result += oneChar + tenChar
			
		result + handleFirstDigit numString.substr 1
		
	handleFirstDigit num.toString()
