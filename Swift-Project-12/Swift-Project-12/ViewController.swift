//
//  ViewController.swift
//  Swift-Project-12
//
//  Created by 耿功发 on 2017/3/21.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    weak var delegate: TableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "New Name"
        
        textView.text = ""
        textView.becomeFirstResponder()
        textView.returnKeyType = .done
        textView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.endEditing(true)
        }
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.characters.count > 0 {
            delegate.updateArray(name: textView.text)
            
        }
        
        _ = self.navigationController?.popViewController(animated: true)
    }

}

