//
//  ViewController.swift
//  QuizQuoz
//
//  Created by Sean Brage on 4/30/18.
//  Copyright © 2018 Sean Brage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    typealias Question = (question: String, answer: String)
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    let questionsWithAnswers: [Question] = [
        ("Cognac is made from what ingredient?", "Grapes"),
        ("What is 7 + 7?", "14"),
        ("What is the capital of Vermont?", "Montpelier")
    ]
    
    var currentQuestion = 0
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        currentQuestion += 1
        
        if (currentQuestion == questionsWithAnswers.count) {
            currentQuestion = 0
        }
        
        questionLabel.text = questionsWithAnswers[currentQuestion].question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        answerLabel.text = questionsWithAnswers[currentQuestion].answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questionsWithAnswers[currentQuestion].question
    }

}

