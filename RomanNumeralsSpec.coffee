describe "Roman Numerals Tests", ->

	it "1 gives I", ->
		actual = romanNumerals 1
		expect(actual).toBe "I"

	it "2 gives II", ->
		actual = romanNumerals 2
		expect(actual).toBe "II"

	it "3 gives III", ->
		actual = romanNumerals 3
		expect(actual).toBe "III"

	it "4 gives IV", ->
		actual = romanNumerals 4
		expect(actual).toBe "IV"

	it "5 gives V", ->
		actual = romanNumerals 5
		expect(actual).toBe "V"

	it "6 gives VI", ->
		actual = romanNumerals 6
		expect(actual).toBe "VI"

	it "7 gives VII", ->
		actual = romanNumerals 7
		expect(actual).toBe "VII"

	it "8 gives VIII", ->
		actual = romanNumerals 8
		expect(actual).toBe "VIII"

	it "9 gives IX", ->
		actual = romanNumerals 9
		expect(actual).toBe "IX"

	it "10 gives X", ->
		actual = romanNumerals 10
		expect(actual).toBe "X"

	it "11 gives XI", ->
		actual = romanNumerals 11
		expect(actual).toBe "XI"

	it "14 gives XIV", ->
		actual = romanNumerals 14
		expect(actual).toBe "XIV"

	it "46 gives XLVI", ->
		actual = romanNumerals 46
		expect(actual).toBe "XLVI"

	it "99 gives XCIX", ->
		actual = romanNumerals 99
		expect(actual).toBe "XCIX"

	it "100 gives C", ->
		actual = romanNumerals 100
		expect(actual).toBe "C"

	it "101 gives CI", ->
		actual = romanNumerals 101
		expect(actual).toBe "CI"

	it "487 gives CDLXXXVII", ->
		actual = romanNumerals 487
		expect(actual).toBe "CDLXXXVII"

	it "1967 gives MCMLXVII", ->
		actual = romanNumerals 1967
		expect(actual).toBe "MCMLXVII"

	it "3000 gives MMM", ->
		actual = romanNumerals 3000
		expect(actual).toBe "MMM"

	it "Anything greater than 3000 returns appropriate error message", ->
		actual = romanNumerals 3001
		expect(actual).toBe "num is too big!"

