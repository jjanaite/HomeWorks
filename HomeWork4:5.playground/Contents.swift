import UIKit

/*
Exercise 1
The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate) is 11%. Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
*/

var deposit = 500000 //var because the value will change later
let period = 5
let rate = 11
var profit = 0



for _ in 1...period {
   let currentProfit = deposit * rate / 100
   profit += currentProfit
   deposit += currentProfit
   
    }

    
    print("Amount of income after \(period) years will be \(profit) Eur. \n My total deposit will be \(deposit) Eur !")
    
    
    /*
Exercise 2
Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
*/

 let arrayOfInteger = [4, 5, 6, 10, 14, 2, 3]
 var evenNumber = 0
 

    for evenNumber in arrayOfInteger{
        if evenNumber % 2 == 0 {
            print("My even numbers are: \(evenNumber)")
             }
        }
        
        
/*
Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
*/


//for counter in 1...10 {
    let randomNumber = Int.random(in: 1...10)
    if randomNumber == 5{
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}

//!!!it the right coding, but is not working (print) on this site (can try on swift playground)

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
 
//my example
var numberOfDays = 0
let mDuringDay = 2
let mDuringNight = 1
var metersPerDay = mDuringDay - mDuringNight
 
print(metersPerDay)
 
for index in 1...10 {
  print(index * metersPerDay)
  numberOfDays = index
 }
 
//rigth example


var distance = 0
var numberOfDays = 0
var isDay = true

while distance != 10 {
  if isDay {
        distance += 2
        numberOfDays += 1
        isDay = false
    } else {
        distance -= 1
        isDay = true }
    }
 
 print("bug will spend \(numberOfDays) days to reach top of the post")
