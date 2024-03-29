//
//  ViewController.swift
//  TipCalculator
//
//  Created by Bailey, Jennifer E. on 12/7/14.
//  Copyright (c) 2014 PBTechTraining. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtAmount: UITextField!
    @IBOutlet weak var lblPercent: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var percentStepper: UIStepper!
    
    var totalBill : Double = 0.0
    var tipPercentage : Double = 0.15
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view,
        // typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stepperChanged(sender: AnyObject) {
        lblPercent.text = String(format: "%.0f%%", percentStepper.value*100)
    }
    
    @IBAction func btnCalc(sender: AnyObject){
        totalBill = (txtAmount.text as NSString).doubleValue * percentStepper.value
        lblTotal.text = String(format: "$%.2f",totalBill)
        
    }


}

