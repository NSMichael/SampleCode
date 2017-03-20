//
//  ViewController.swift
//  Swift-Project-07
//
//  Created by 耿功发 on 2017/3/17.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "First View"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ViewController.passToAnotherView))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func passToAnotherView() {
        print("Pressed Done")
        
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.content = textView.text
        navigationController?.pushViewController(secondViewController, animated: true)
    }

}

