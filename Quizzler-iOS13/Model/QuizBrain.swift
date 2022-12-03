//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by byteridge on 03/12/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


// this file contains a Structure that contains the list having quiz questions and answers as well as the current question number index

struct QuizBrain {
    // creating an array for getting the quiz questions
    let quizQuestions: [Question] = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    // the variable below is used to get the currentQuestion number value that will be shown to the user
    var currentQuestionNumber: Int = 0
    
    // the property below is used to get the score achieved by the user
    var score = 0
    
    // the code below is used to create a method to check the answer entered by the user
    
    // passing answer as external parameter to the checkAnswer() method below and userAnswer of type String
    // as internal parameter to the method below
    
    // replacing the answer parameter with _ so that the external parameter will not have a name but still it
    // can be used
    // func checkAnswer(answer userAnswer: String){
        
    // }
    
    
    // in the code below the value of _ will be same as userAnswer
    
    // the method below returs true and false i.e the boolean value
    
    // making the function below as a mutating function since we are changing the value of the
    // score property of the questionBrain structure
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        // the code below is for debugging purpose
        print("The answer entered by the user is: \(userAnswer)")
        
        // the code below is used to check that if the userAnswer is equal to the answer associated
        // with the question or not
         if userAnswer == quizQuestions[currentQuestionNumber].answer {
             
            // the code below is used to increase the value of score by 1
             score += 1
             
            return true
         } else {
             
             // the code below is used to decrease the value of score by 1
//             score -= 1
             
            return false
         }
        
        // the above code can also be written as below
//        return userAnswer == quizQuestions[currentQuestionNumber].text  // this code will return true or
        // false based on the condition 
    }
    
    // the method below is used to get the question text from the quizQuestions array and return as output
    func getQuestionText() -> String {
        // the code below is used to return the question text at the current question number from the
        // quiz questions array
        return quizQuestions[currentQuestionNumber].text
    }
    
    // the method below is used to get the percentage of progress made by the user
    
    // the method below returns the value of type float as output
    func getProgress() -> Float {
        // the code below is used to return the progress made by the user
        return Float(currentQuestionNumber + 1) / Float(quizQuestions.count)
    }
    
    // the method below is used to get the index of the next Question from the quiz questions array
    
    // the code below is used to add the mutating keyword in front of the func since the properties
    // inside a structure act as a constant due to self keyword auto attached to them at the time of
    // creating of the property and by default the self is created using let so self is constant and
    // that's why if we want to change the value of a property inside a struct then we need to mark that
    // method as mutating
    mutating func nextQuestion() {
        if currentQuestionNumber + 1 < quizQuestions.count {
            // the code below is used to set the value of currentQuestionNumber variable when the button is
            // pressed
            currentQuestionNumber = currentQuestionNumber + 1
        } else {
            // setting the value of currentQuestionNumber back to 0
            currentQuestionNumber = 0
            
            // setting the value of score to 0 since the value of currentQuestionNumber is 0
            // i.e the question will be first question
            score = 0
            
        }
    }
    
    // the method below is used to return the score to the user
    func getScore() -> Int {
        // the code below is used to return the value of score
        return score
    }
    
}
