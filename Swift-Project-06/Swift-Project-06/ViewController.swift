//
//  ViewController.swift
//  Swift-Project-06
//
//  Created by 耿功发 on 2017/3/16.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelDateAndTime: UILabel!
    
    let locale = Locale(identifier: "en_US")
    var formatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let myTimeZone = TimeZone(identifier: "Asia/Shanghai") {
            print("\(myTimeZone.identifier)")
        }
        
        formatter.locale = self.locale
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        
        labelDateAndTime.text = formatter.string(from: Date())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonRefresh(_ sender: Any) {
        labelDateAndTime.text = formatter.string(from: Date())
    }

}

