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
		oneChars = oneChar + oneChar + oneChar
		fiveChar = dataForThisDecade[1]
		tenChar = dataForThisDecade[2]
		
		digit = Number numString[0]

		switch Number numString[0]
			when 1, 2, 3
				result += oneChars.substr 0, digit
			when 4
				result += oneChars[0] + fiveChar
			when 5, 6, 7, 8
				result += fiveChar + oneChars.substr 0, digit - 5
			when 9
				result += oneChars[0] + tenChar
			
		result + handleFirstDigit numString.substr 1
		
	handleFirstDigit num.toString()
