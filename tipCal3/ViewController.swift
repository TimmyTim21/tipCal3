//
//  ViewController.swift
//  tipCal3
//
//  Created by Timothy Stewart on 2/20/20.
//  Copyright © 2020 Timothy Stewart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var segControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculated(_ sender: Any) {
        //get data
        let bill = Double(textField.text!) ?? 0
        
        //calculate the tip
        let tipPercent = [0.15, 0.18, 0.2]
        let tip = bill * tipPercent[segControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        //display tip
        tipLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total )
        
    }
    

}

