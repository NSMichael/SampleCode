//
//  ViewController.swift
//  Swift-Project-08
//
//  Created by 耿功发 on 2017/3/17.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureSwipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipe(_:)))
        gestureSwipeUp.direction = .up
        textView.addGestureRecognizer(gestureSwipeUp)
        
        let gestureSwipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipe(_:)))
        gestureSwipeDown.direction = .down
        textView.addGestureRecognizer(gestureSwipeDown)
    }
    
    func swipe(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.down:
                textView.endEditing(true)
            case UISwipeGestureRecognizerDirection.up:
                textView.becomeFirstResponder()
            default:
                break
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

