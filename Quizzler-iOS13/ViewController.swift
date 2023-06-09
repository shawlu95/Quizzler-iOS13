//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    struct Question {
        let text: String
        let answer: String
        
        init(q: String, a: String) {
            text = q
            answer = a
        }
    }
    
    let questions = [
        Question(q: "Four + two = six", a: "True"),
        Question(q: "Five - three > 1", a: "True"),
        Question(q: "Bailey is dog", a: "False")
    ]
    
    var idx = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if sender.currentTitle == questions[idx].answer  {
            score += 1
            print("right")
        } else {
            print("wrong")
        }
            
        idx += 1
        if idx == questions.count {
            idx = 0
            score = 0
        }
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = questions[idx].text
    }
}

