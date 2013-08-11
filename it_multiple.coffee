it_multiple = (description, fn, testCases) ->
	numTests = testCases.length
	correctlyPluralisedWordTest = if numTests is 1 then "test" else "tests"
	describe(
		description + " (#{numTests} #{correctlyPluralisedWordTest})",
		->
			for testCase in testCases
				do (testCase) ->
					formattedTestCase = "(" + JSON.stringify(testCase) + ")"
					it description + formattedTestCase, -> fn.apply this, testCase
	)

(exports ? this).it_multiple = it_multiple
