//
//  ViewController.swift
//  Swift-Project-04
//
//  Created by 耿功发 on 2017/3/15.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldAmount: UITextField!
    @IBOutlet weak var labelTipPercent: UILabel!
    @IBOutlet weak var labelTipAmount: UILabel!
    @IBOutlet weak var labelTotalAmount: UILabel!
    @IBOutlet weak var sliderTip: UISlider!
    
    var amount: Float = 0
    var tip: Float = 0.15
    var tipCalculator = TipCalculator()
    
    @IBAction func sliderTipChanged(_ sender: UISlider) {
        self.tip = round(sender.value * 100) / 100
        calculateTip()
    }
    
    
    func addDoneButton() {
        let barButtonFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let barButtonDone = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ViewController.processInputAmount))
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.items = [barButtonFlex, barButtonDone]
        keyboardToolbar.sizeToFit()
        textFieldAmount.inputAccessoryView = keyboardToolbar
    }
    
    func processInputAmount() {
        textFieldAmount.endEditing(true)
        
        if let stringAmount = textFieldAmount.text {
            self.amount = (stringAmount as NSString).floatValue
        } else {
            self.amount = 0
        }
        
        textFieldAmount.text = String(format: "$%0.2f", self.amount)
        calculateTip()
    }
    
    func calculateTip() {
        let amountTip = self.tipCalculator.calculatorTip(amount: self.amount, tip: self.tip)
        let amountTotal = self.tipCalculator.calculatorTotal(amount: self.amount, tip: self.tip)
        
        labelTipPercent.text = String(format: "Tip (%.0f%%):", self.tip * 100)
        labelTipAmount.text = String(format: "$%0.2f", amountTip)
        labelTotalAmount.text = String(format: "$%0.2f", amountTotal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textFieldAmount.keyboardType = .decimalPad
        
        addDoneButton()
        
        sliderTip.value = self.tip
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

