//
//  ViewController.swift
//  Swift-Project-02
//
//  Created by 耿功发 on 2017/3/15.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var count = 0
    var timer: Timer?

    @IBAction func buttonTap(_ sender: Any) {
        count = count + 1
        labelCount.text = String(count)
    }
    
    @IBAction func buttonReset(_ sender: Any) {
        count = 0
        labelCount.text = String(count)
    }

    func buttonPress(sender: UIGestureRecognizer) {
        if sender.state == .ended {
            print("UIGestureRecognizer - State - Ended")
            timer?.invalidate()
        } else if sender.state == .began {
            print("UIGestureRecognizer - State - Began")
            timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(ViewController.buttonTap(_:)), userInfo: nil, repeats: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let gestureTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.buttonTap(_:)))
        let gesturePress = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.buttonPress(sender:)))
        button.addGestureRecognizer(gestureTap)
        button.addGestureRecognizer(gesturePress)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

