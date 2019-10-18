//
//  ViewController.swift
//  TipCalculator
//
//  Created by Tyson, Sebastian on 2019-10-10.
//  Copyright © 2019 Tyson, Sebastian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var submittedPeopleCount: UITextField!
    @IBOutlet weak var submittedTip: UITextField!
    @IBOutlet weak var submittedBillAmount: UITextField!
    @IBOutlet weak var calculatedTip: UILabel!
    @IBOutlet weak var calculatedTipPerPerson: UILabel!
    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get actual strungs from each text field
        // (Force unwrapping of the optional strings contined in each text field)
        let billAmountAsString = submittedBillAmount.text!
        let tipPercentageAsString = submittedTip.text!
        let peopleCountAsString = submittedPeopleCount.text!
        
        // Convert strings to double data types
        
        let billAmountAsDouble = Double(billAmountAsString)!
        let tipPercentageAsDouble = Double(tipPercentageAsString)! / 100
        let peopleCountAsDouble = Double(peopleCountAsString)!
        
        // Calculate the tip
        let tipAmountInDollars = billAmountAsDouble * tipPercentageAsDouble
        let tipPerPerson = tipAmountInDollars / peopleCountAsDouble
            
        // Show the tip amount
        calculatedTip.text = String(tipAmountInDollars)
        calculatedTipPerPerson.text = String(tipPerPerson)
    }
    

}

