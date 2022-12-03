//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // creating an IBOutlet to get the scorelabel to show the score to the user
    @IBOutlet weak var scoreLabel: UILabel!
    
    // the code below is used to create an IBOutlet variable for question that will be displayed to the user
    @IBOutlet weak var questionLabel: UILabel!
    
    // creating an IBOutlet variable for the progressBar to display the progress of the user
    @IBOutlet weak var progressBar: UIProgressView!
    
    // creating an IBOutlet variable for true button
    @IBOutlet weak var trueButton: UIButton!
    
    // creating an IBOutlet variable for false button
    @IBOutlet weak var falseButton: UIButton!
    
    // creating an array for getting the quiz questions
    
    // the below array stores the data of type string
    // let quizQuestions: [String] = [
    //    "Two + Four is equal to Six",
    //    "Five - Three is greater than one",
    //    "Three + Eight is less than ten",
    // ]
    
    // the code below is used to create a 2D Array that stores the questions as well as answer to those
    // question
    
    // in the code below [[String]] shows that the below arrays is a 2D array of type string
    // let quizQuestions: [[String]] = [
    //    ["Two + Four is equal to Six", "True"],
    //    ["Five - Three is greater than one", "False"],
    //    ["Three + Eight is less than ten", "True"],
    // ]
    
    // the code below is used to create an array of type Question structure to get the list of questions
    // along with the answer associated them

    // the list below takes instance of Question structure as input along with the properties defined in the
    // question structure
    // let quizQuestions: [Question] = [
    //    Question(text: "Two + Four is equal to Six", answer: "True"),
    //    Question(text: "Five - Three is greater than one", answer: "False"),
    //    Question(text: "Three + Eight is less than ten", answer: "True"),
    // ]
    
//    let quizQuestions: [Question] = [
//        Question(q: "A slug's blood is green.", a: "True"),
//        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
//        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
//        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
//        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
//        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
//        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
//        Question(q: "Google was originally called 'Backrub'.", a: "True"),
//        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
//        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
//        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
//        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
//    ]
    
    
    // the variable below is used to get the currentQuestion number value that will be shown to the user
//    var currentQuestionNumber: Int = 0
    
    // the code below is used to create an instance of the QuizBrain structure for accessing the properties
    // and methods inside it
    
    // the instance of structure starts with the smaller case letter
    var quizBrain = QuizBrain()
    
    // the method below will be called when the view is being loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // setting the value of text property for the questionLabel variable when the app loads up so that
        // the user see the text "Two + Four is Six"
        // questionLabel.text = "Two + Four is equal to Six"
        
        // getting the value at index 0 from the quizQuestions array and setting the value of text property
        // for the questionLabel variable
        // questionLabel.text = quizQuestions[0]
        
        // the code below is used to set the value of the text property for the questionLabel variable
        // to show the text based on the value of currentQuestion variable
        // questionLabel.text = quizQuestions[currentQuestionNumber]
        
        // the code below is used to call the updateUI() method for updating the UI
        updateUI()
    }

    // the code below is used to create an IBAction method that will be called if either the true or the false
    // button is pressed
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        // the code below is used to get the answer that the user choose by getting the currentTitle
        // from the button tag using the currentTitle property and storing it in a variable called
        // userAnswer
        let userAnswer = sender.currentTitle
        
        // the code below is to use the instance of quizBrain to get access to the check answer method
        // for checking the answer and pass userAnswer at input to it
        
        // the code below is used to get the result from the checkAnswer() method and save it in a
        // variable called result
        let userGotItRight: Bool = quizBrain.checkAnswer(userAnswer!)
        
        // the code below is used to check that if the value of userGotItRight is true then change the
        // color of the button to green else change the color of the button to red using the backgroundColor
        // property
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        // the code below is used to get the actual answer that we have stored in the quizQuestions
        // array inside the inner array at index 1 and then store it in a variable called actualAnswer
        // let actualAnswer = quizQuestions[currentQuestionNumber][1]
        
        // the code below is used to get the actual answer to the particular question by getting access
        // to the answer property for a particular question instance from the quizQuestions array
        // let actualAnswer = quizQuestions[currentQuestionNumber].answer

        // the code below is used to check that if the value of userAnwer is equal to the value of the
        // actualAnswer then print right else print wrong
        // if userAnswer == actualAnswer {
            // print("Right!")
            
            // using the backgroundColor property from the sender instance of the button to set the
            // background color to green if the answer given by the user is correct
           //  sender.backgroundColor = UIColor.green    // here we are using the UIColors provided by swift
        // } else {
            // print("Wrong!")
            
            // using the backgroundColor property from the sender instance of the button to set the
            // background color to red if the answer given by the user is wrong
           // sender.backgroundColor = UIColor.red    // here we are using the UIColors provided by swift
        // }
        
        // the code below is used to set the value of currentQuestionNumber variable when the button is
        // pressed
        // currentQuestionNumber = currentQuestionNumber + 1
        
        // the code below is used to increase the value of the currentQuestionNumber only if the value
        // of the currentQuestionNumber is less then the length of the quizQuestions array
        
        // using the count property to get the length of the quizQuestions array
        // if currentQuestionNumber < quizQuestions.count - 1 {
        
        // the code below is to first increase the value of currentQuestionNumber by 1 and then check
        // that whether the value of currentQuestionNumber is less then the length of the quizQuestion array
        // or not
//        if currentQuestionNumber + 1 < quizQuestions.count {
//            // the code below is used to set the value of currentQuestionNumber variable when the button is
//            // pressed
//            currentQuestionNumber = currentQuestionNumber + 1
//        } else {
//            // setting the value of currentQuestionNumber back to 0
//            currentQuestionNumber = 0
//        
//        }
        
        
        // using the nextQuestion() method from the questionBrain structure to get the next question
        quizBrain.nextQuestion()
        
        // the code below is for debugging purpose
//        print("The value of currentQuestionNumber is: \(currentQuestionNumber)")
        
        // the code below is used to add a delay of 0.2 seconds before the updateUI() method is called
        
        // the timerInterval property is used to create a delay of 0.2 seconds and then the
        // selector property calls the updateUI() method to update the UI and the value of repeat
        // property has to be false because we don't want to repeat the timer once it is called
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        // the code below is used to call the updateUI() method to update the UI
        // updateUI()
        
    }
    
    // the method below is used to update the UI / update the question label value
    
    // the return type of below method is Void
    
    // adding @objc to create the method below as a objective c function
    @objc func updateUI() -> Void {
        // the code below is used to set the value of the text property for the questionLabel variable
        // to show the text based on the value of currentQuestion variable
        // questionLabel.text = quizQuestions[currentQuestionNumber]
        
        // setting the value of text for the questionLabel from the quizQUestions array to show the
        // questions to the user
        // questionLabel.text = quizQuestions[currentQuestionNumber][0]   // here currentQuestionNumber is
        // the index of the array inside the quizQuestions array and 0 is the index of the element
        // inside the inner array present inside tehe quizQuestions array
        
        
        // the code below is used to get access to the text property from the array of type Question to
        // get the question from the array of type Question at currentQuestionNumber value that
        // will be displayed to the user
//        questionLabel.text = quizQuestions[currentQuestionNumber].text
        
        // the code below is used to call the getQuestion() method from the questionBrain structure to
        // get the question text and pass that to the text property of the questionLabel variable
        questionLabel.text = quizBrain.getQuestionText()
        
        
        // using the backgroundColor property from the variable trueButton to set its color value
        // to UIButton.clear when the ui is updated
        trueButton.backgroundColor = UIColor.clear
        
        // using the backgroundColor property from the variable fasleButton to set its color value to
        // UIButton.clear when the UI is updated
        falseButton.backgroundColor = UIColor.clear
        
        // using the progress property of the progressBar to update the propgress made by the user
        
        // using the currentQuestionNumber + 1 since the value of currentQuestionNumber starts
        // with 0
//        progressBar.progress = Float(currentQuestionNumber + 1) / Float(quizQuestions.count)
        
        
        // the code below is used to call the getProgress() method from the questionBrain structure and get the percentage progress made
        // by the user and pass that to the progress property of the progressBar variable
        progressBar.progress = quizBrain.getProgress()
        
        // the code below is used to call the getScore() method from the quizBrain structure to get the
        // score achieved by the user and assign that to the text property of the scoreLabel variable
        
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
    
    
    
    
}

