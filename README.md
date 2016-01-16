The following is a TDD Kata – an exercise in coding, refactoring and test-first. 

Code Kata is a term coined by Dave Thomas, co-author of the book The Pragmatic Programmer, in a bow to the Japanese concept of kata in the martial arts. A code kata is an exercise in programming which helps a programmer hone their skills through practice and repetition.

This Kata description based on Kata by [Roy Osherove](http://osherove.com/tdd-kata-1/)

_Before you start:_ 

* _Try not to read ahead._
* _Do one task at a time. The trick is to learn to work incrementally._
* _Make sure you only test for correct inputs. There is no need to test for invalid inputs for this kata._

#### :heavy_plus_sign: StringCalculatorKata

* Create a simple String calculator with a method: add().
* The method can take 0, 1...n numbers, and will return their sum (for an empty string it will return 0) for example “” or “1” or “1,2”.
* Start with the simplest test case of an empty string and move to 1 and two numbers.
* Remember to solve things as simply as possible so that you force yourself to write tests you did not think about. 
* Remember to refactor after each passing test.
* Allow the add() method to handle an unknown amount of numbers.
* Allow the Add method to handle new lines between numbers (instead of commas).
   * the following input is ok:  “1\n2,3”  (will equal 6).
   * the following input is NOT ok:  “1,\n” (not need to prove it - just clarifying).
* Support different delimiters:
  * To change a delimiter, the beginning of the string will contain a separate line that looks like this:   “//[delimiter]\n[numbers…]” for example “//;\n1;2” should return three where the default delimiter is ‘;’.
  * All existing scenarios should still be supported.
* Calling add() with a negative number should throw an exception “Numbers should be positive.", and the negative that was passed.
* If there are multiple negatives, show all of them in the exception message.
