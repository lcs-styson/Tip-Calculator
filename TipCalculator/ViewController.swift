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
    @IBOutlet weak var submittedBillAmount: UITextField!
    @IBOutlet weak var submittedTip: UITextField!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Text fields
        let billAmount = submittedBillAmount!
        let tipPercentage = submittedTip!
        let peopleCount = submittedPeopleCount!
        
        
        // Get actual strungs from each text field
        // (Force unwrapping of the optional strings contined in each text field)
        let billAmountAsString = billAmount.text!
        let tipPercentageAsString = tipPercentage.text!
        let peopleCountAsString = peopleCount.text!
        
        // Convert strings to double data types
        
        let billAmountAsDouble = Double(billAmountAsString)!
        let tipPercentageAsDouble = Double(tipPercentageAsString)!
        let peopleCountAsDouble = Double(peopleCountAsString)!
        
        // Calculate the tip
        let tipAmountInDollars = billAmountAsDouble * tipPercentageAsDouble
    }


}

