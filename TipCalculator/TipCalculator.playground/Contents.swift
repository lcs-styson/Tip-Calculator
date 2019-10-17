import UIKit

// Text fields
let billAmount = UITextField()
let tipPercentage = UITextField()
let splitBetweenHowManyPeople = UITextField()

// Simulate userinput
billAmount.text = "100"
tipPercentage.text = ".15"
splitBetweenHowManyPeople.text = "2"

// Get actual strungs from each text field
// (Force unwrapping of the optional strings contined in each text field)
let billAmountAsString = billAmount.text!
let tipPercentageAsString = tipPercentage.text!
let splitBetweenHowManyPeopleAsString = splitBetweenHowManyPeople.text!

// Convert strings to double data types

let billAmountAsDouble = Double(billAmountAsString)!
let tipPercentageAsDouble = Double(tipPercentageAsString)!
let splitBetweenHowManyPeopleAsDouble = Double(splitBetweenHowManyPeopleAsString)!

// Calculate the tip
let tipAmountInDollars = billAmountAsDouble * tipPercentageAsDouble
