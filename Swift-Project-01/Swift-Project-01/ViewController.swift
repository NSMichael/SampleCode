//
//  ViewController.swift
//  Swift-Project-01
//
//  Created by 耿功发 on 2017/3/13.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    @IBAction func buttonReset(_ sender: Any) {
        count = 0
        countLabel.text = String(count)
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

