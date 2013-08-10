describe "Tests for RomanNumerals-CoffeeScript", ->

	it_multiple(
		"when given this num it returns this string",
		(num, expected) ->
			actual = romanNumerals num
			expect(actual).toBe expected
		[
			[1, "I"],
			[2, "II"],
			[3, "III"],
			[4, "IV"],
			[5, "V"],
			[6, "VI"],
			[7, "VII"],
			[8, "VIII"],
			[9, "IX"],
			[10, "X"],
			[11, "XI"],
			[14, "XIV"],
			[46, "XLVI"],
			[99, "XCIX"],
			[100, "C"],
			[101, "CI"],
			[487, "CDLXXXVII"],
			[1967, "MCMLXVII"],
			[3000, "MMM"],
			[3001, "num is too big!"],
		]
	)
