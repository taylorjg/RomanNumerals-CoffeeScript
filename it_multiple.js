/* global describe, it */
/* exported it_multiple */

(function () {

    "use strict";

    window.it_multiple = function (description, fn, testCases) {
        var numTests = testCases.length;
        var formattedTestCount = " (" + numTests + " " + ((numTests === 1) ? "test" : "tests") + ")";
        describe(description + formattedTestCount, function () {
            for (var i = 0; i < numTests; i++) {
                /* jshint -W083 */
                (function (testCase) {
                    var formattedTestCase = "(" + JSON.stringify(testCase) + ")";
                    it(description + formattedTestCase, function () {
                        fn.apply(this, testCase);
                    });
                } (testCases[i]));
            }
        });
    };
} ());
