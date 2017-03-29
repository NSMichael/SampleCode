//
//  ViewController.swift
//  Quiz
//
//  Created by 耿功发 on 2017/3/29.
//  Copyright © 2017年 Bid Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionlabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["What is 7+7?", "What is the capital of Vermont?", "What is cognac made from?"]
    let answerss: [String] = ["14", "Montpelier", "Grapes"]
    var currentQuestionIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionlabel.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex];
        questionlabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answerss[currentQuestionIndex]
        answerLabel.text = answer
    }
}

