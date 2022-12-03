//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by byteridge on 27/11/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

// the code below is used to create a structure named Question to create a list of questions along
// with the answers to be used in the app
struct Question{
    // creating the text property of type String to get the question text that will be displayed to the user
    let text: String
    // creating the answer property of type String to get the answer for the particular question
    let answer: String
    
    // using the init() method to initialize the above properties
    // init(text: String, answer: String){
        // using the self keyword to refer to the property text and answer defined
        // inside the Structure Question and not inside the init() method
        // self.text = text
        // self.answer = answer
    // }
    
    
    // using the init() method to initialize the above properties
    init(q: String, a: String){
        text = q
        answer = a
    }
    
}
