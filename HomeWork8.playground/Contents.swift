import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

/* Explanation from the lesson
 
 enum CalculationType: String {
     case addition = "addition"
     case substraction = "substraction"
     case multiplication = "multiplication"
     case division = "division"
 }
 */


/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
    var result = numberOne
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
 */

func calculateResult (firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int {
    var result = numberOne
    switch calculationType {
    case .addition: result += numberTwo;
    case .substraction: result -= numberTwo;
    case .multiplication: result *= numberTwo;
    case .division: result /= numberTwo;
        //case .division: numberTwo != 0 ? /= numberTwo : print("can't divide to 0")
    }
    print("Result: \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
}
/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

var numberOne = 3
var numberTwo = 7

calculateResult (firstNumber: numberOne, andSecondNumber:numberTwo, withCalculationType: CalculationType.addition)
calculateResult (firstNumber: numberOne, andSecondNumber:numberTwo, withCalculationType: CalculationType.substraction)
calculateResult (firstNumber: numberOne, andSecondNumber:numberTwo, withCalculationType: CalculationType.multiplication)
calculateResult (firstNumber: numberOne, andSecondNumber:numberTwo, withCalculationType: CalculationType.division)



/*
Exercise 2
Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */
/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
Than run getSpecs() for audiQ7 and audiTT
 */

struct Car {
        var name: String
        var productionYear: Int
        var horsPower: Int
    
func getSpecs() {
            print("Car brand of \(name) is produced in: \(productionYear) and have \(horsPower) hp")
        }
    }
let audiQ7 = Car(name: "audiQ7", productionYear: 2006, horsPower: 335)
var audiTT = audiQ7
audiTT.name = "audiTT"
audiQ7.getSpecs()
audiTT.getSpecs()
/*
Exercise 2
Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */
/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
Than run getSpecs() for audiQ7 and audiTT
 */
