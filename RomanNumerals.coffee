romanNumerals = (num) ->

	if num > 3000
		return "num is too big!"
	
	DECADE_DATA = [
		["III", "V", "X"],
		["XXX", "L", "C"],
		["CCC", "D", "M"],
		["MMM"]
	]

	handleFirstDigit = (numString) ->
	
		result = ""
		
		numStringLength = numString.length
		if numStringLength is 0
			return result
			
		dataForThisDecade = DECADE_DATA[numStringLength - 1]
		oneChars = dataForThisDecade[0]
		fiveChar = dataForThisDecade[1]
		tenChar = dataForThisDecade[2]
		
		digit = Number numString[0]
		
		if digit >= 1 and digit <= 3
			result += oneChars.substr 0, digit
		else if digit is 4
			result += oneChars[0] + fiveChar
		else if digit >= 5 and digit <= 8
			result += fiveChar
			result += oneChars.substr 0, digit - 5
		else if digit is 9
			result += oneChars[0] + tenChar

		result + handleFirstDigit numString.substr 1
		
	handleFirstDigit num.toString()
