//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Luis Gomez on 20/2/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        
      /*  Question(q: "1 x 1 = ", a: "01"),
        Question(q: "1 x 2 = ", a: "02"),
        Question(q: "1 x 3 = ", a: "03"),
        Question(q: "1 x 4 = ", a: "04"),
        Question(q: "1 x 5 = ", a: "05"),
        Question(q: "1 x 6 = ", a: "06"),
        Question(q: "1 x 7 = ", a: "07"),
        Question(q: "1 x 8 = ", a: "08"),
        Question(q: "1 x 9 = ", a: "09"),
        Question(q: "1 x 10 = ", a: "10"),*/
        
        Question(q: "2 x 1 = ", a: "02"),
        Question(q: "2 x 2 = ", a: "04"),
        Question(q: "2 x 3 = ", a: "06"),
        Question(q: "2 x 4 = ", a: "08"),
        Question(q: "2 x 5 = ", a: "10"),
        Question(q: "2 x 6 = ", a: "12"),
        Question(q: "2 x 7 = ", a: "14"),
        Question(q: "2 x 8 = ", a: "16"),
        Question(q: "2 x 9 = ", a: "18"),
        Question(q: "2 x 10 = ", a: "20"),
        
        Question(q: "3 x 1 = ", a: "03"),
        Question(q: "3 x 2 = ", a: "06"),
        Question(q: "3 x 3 = ", a: "09"),
        Question(q: "3 x 4 = ", a: "12"),
        Question(q: "3 x 5 = ", a: "15"),
        Question(q: "3 x 6 = ", a: "18"),
        Question(q: "3 x 7 = ", a: "21"),
        Question(q: "3 x 8 = ", a: "24"),
        Question(q: "3 x 9 = ", a: "27"),
        Question(q: "3 x 10 = ", a: "30"),
        
        Question(q: "4 x 1 = ", a: "04"),
        Question(q: "4 x 2 = ", a: "08"),
        Question(q: "4 x 3 = ", a: "12"),
        Question(q: "4 x 4 = ", a: "16"),
        Question(q: "4 x 5 = ", a: "20"),
        Question(q: "4 x 6 = ", a: "24"),
        Question(q: "4 x 7 = ", a: "28"),
        Question(q: "4 x 8 = ", a: "32"),
        Question(q: "4 x 9 = ", a: "36"),
        Question(q: "4 x 10 = ", a: "40"),
        
        Question(q: "5 x 1 = ", a: "05"),
        Question(q: "5 x 2 = ", a: "10"),
        Question(q: "5 x 3 = ", a: "15"),
        Question(q: "5 x 4 = ", a: "20"),
        Question(q: "5 x 5 = ", a: "25"),
        Question(q: "5 x 6 = ", a: "30"),
        Question(q: "5 x 7 = ", a: "35"),
        Question(q: "5 x 8 = ", a: "40"),
        Question(q: "5 x 9 = ", a: "45"),
        Question(q: "5 x 10 = ", a: "50"),
        
        Question(q: "6 x 1 = ", a: "06"),
        Question(q: "6 x 2 = ", a: "12"),
        Question(q: "6 x 3 = ", a: "18"),
        Question(q: "6 x 4 = ", a: "24"),
        Question(q: "6 x 5 = ", a: "30"),
        Question(q: "6 x 6 = ", a: "36"),
        Question(q: "6 x 7 = ", a: "42"),
        Question(q: "6 x 8 = ", a: "48"),
        Question(q: "6 x 9 = ", a: "54"),
        Question(q: "6 x 10 = ", a: "60"),
        
        Question(q: "7 x 1 = ", a: "07"),
        Question(q: "7 x 2 = ", a: "14"),
        Question(q: "7 x 3 = ", a: "21"),
        Question(q: "7 x 4 = ", a: "28"),
        Question(q: "7 x 5 = ", a: "35"),
        Question(q: "7 x 6 = ", a: "42"),
        Question(q: "7 x 7 = ", a: "49"),
        Question(q: "7 x 8 = ", a: "56"),
        Question(q: "7 x 9 = ", a: "63"),
        Question(q: "7 x 10 = ", a: "70"),
        
        Question(q: "8 x 1 = ", a: "08"),
        Question(q: "8 x 2 = ", a: "16"),
        Question(q: "8 x 3 = ", a: "24"),
        Question(q: "8 x 4 = ", a: "32"),
        Question(q: "8 x 5 = ", a: "40"),
        Question(q: "8 x 6 = ", a: "48"),
        Question(q: "8 x 7 = ", a: "56"),
        Question(q: "8 x 8 = ", a: "64"),
        Question(q: "8 x 9 = ", a: "72"),
        Question(q: "8 x 10 = ", a: "80"),
        
      /*  Question(q: "9 x 1 = ", a: "09"),
        Question(q: "9 x 2 = ", a: "18"),
        Question(q: "9 x 3 = ", a: "27"),
        Question(q: "9 x 4 = ", a: "36"),
        Question(q: "9 x 5 = ", a: "45"),
        Question(q: "9 x 6 = ", a: "54"),
        Question(q: "9 x 7 = ", a: "63"),
        Question(q: "9 x 8 = ", a: "72"),
        Question(q: "9 x 9 = ", a: "81"),
        Question(q: "9 x 10 = ", a: "90"),*/
    
        
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswers(userAnswer: String) -> Bool {
        if userAnswer  == quiz[questionNumber].answer   {
            score += 1
            return true
       
        } else {
            
            
            return false
         
        }
    }
  
    func getScore() -> Int {
        score
    }
    
    func getQuestionText() -> String {
        quiz[questionNumber].text
    }
    
  
    mutating func nextQuestion() {
         
        questionNumber = Int.random(in: 1...(quiz.count - 1))
            
     
    }
    
   
    
}
