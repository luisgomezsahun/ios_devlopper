//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    var player: AVAudioPlayer!
    
    var numberOfKeystrokes = 0
    var keyPressed1 = "0"
    var keyPressed2 = "0"
    var userAnswer1 = "00"
    var userAnswer2 = "00"
    var timer = Timer()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    @IBAction func numberPressed(_ sender: UIButton) {
   
        sender.alpha = 0.4
        _ = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: false) {_ in
            sender.alpha = 1
            }
        
        if numberOfKeystrokes == 0 {
            
            switch sender.currentTitle {
                
            case "1":
                keyPressed1 = "1"
            case "2":
                keyPressed1 = "2"
            case "3":
                keyPressed1 = "3"
            case "4":
                keyPressed1 = "4"
            case "5":
                keyPressed1 = "5"
            case "6":
                keyPressed1 = "6"
            case "7":
                keyPressed1 = "7"
            case "8":
                keyPressed1 = "8"
            case "9":
                keyPressed1 = "9"
            case "0":
                keyPressed1 = "0"
            default:
                break
            }
            userAnswer1 = "0"+keyPressed1
            questionLabel.text = quizBrain.getQuestionText() + " " + keyPressed1
            numberOfKeystrokes += 1
            let userGotItRight = quizBrain.checkAnswers(userAnswer:userAnswer1)
            if userGotItRight {
                questionLabel.backgroundColor = UIColor.green
                playSound(soundName: "bien")
                quizBrain.nextQuestion()
                questionLabel.text = quizBrain.getQuestionText()
                numberOfKeystrokes = 0
            }
            
        } else if numberOfKeystrokes == 1 {
    
            switch sender.currentTitle {
                
            case "1":
                keyPressed2 = keyPressed1+"1"
            case "2":
                keyPressed2 = keyPressed1+"2"
            case "3":
                keyPressed2 = keyPressed1+"3"
            case "4":
                keyPressed2 = keyPressed1+"4"
            case "5":
                keyPressed2 = keyPressed1+"5"
            case "6":
                keyPressed2 = keyPressed1+"6"
            case "7":
                keyPressed2 = keyPressed1+"7"
            case "8":
                keyPressed2 = keyPressed1+"8"
            case "9":
                keyPressed2 = keyPressed1+"9"
            case "0":
                keyPressed2 = keyPressed1+"0"
            default:
                break
            }
            
            userAnswer2 = keyPressed2
            questionLabel.text = quizBrain.getQuestionText() + " " + userAnswer2
            numberOfKeystrokes = 0
            let userGotItRight = quizBrain.checkAnswers(userAnswer:userAnswer2)
            if userGotItRight {
                     
                questionLabel.backgroundColor = UIColor.green
                playSound(soundName: "bien")
                quizBrain.nextQuestion()
                questionLabel.text = quizBrain.getQuestionText()
                
                
            } else {
                questionLabel.backgroundColor = UIColor.red
                playSound(soundName: "mal")
                questionLabel.text = quizBrain.getQuestionText()
              
            }
        }

  
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }
        
    @objc func updateUI() {
        
       // questionLabel.text = quizBrain.getQuestionText()
        questionLabel.backgroundColor = UIColor.clear
        scoreLabel.text = "Score: \(quizBrain.getScore())"
  
    }
    
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
   
    
}

