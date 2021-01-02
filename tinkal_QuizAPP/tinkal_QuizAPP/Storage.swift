//
//  Storage.swift
//  tinkal_QuizAPP
//
//  Created by Tinkal on 2019-12-05.
//  Copyright © 2019 Tinkal. All rights reserved.
//

import Foundation
class Storage{
    var questions = [Question]()
    
    init() {
        
        
        questions.append(Question(question: "All sides of a scalene triangle\n have the same length.", answer: false))
        questions.append(Question(question: "All the kings in a standard deck\n of cards have a mustache", answer: false))
        questions.append(Question(question: "The hummingbird egg is the world's \nsmallest bird egg", answer: true))
        questions.append(Question(question: "The first Olympic games honored\n Alexander the Great.", answer: false))
        questions.append(Question(question: "Abraham Lincoln had \nno middle name. ", answer: true))
        questions.append(Question(question: "-4 is a natural number.", answer: false))
        questions.append(Question(question: "Before becoming queen,\n Queen Elizabeth was a mechanic.", answer: true))
        questions.append(Question(question: "Donald Duck’s sister\n is named Donna.", answer: false))
        questions.append(Question(question: "Cows sleep standing up ", answer: true))
        questions.append(Question(question: "The first food grown and eaten\n in space was potatoes.  ", answer: false))
        questions.append(Question(question: "It’s illegal in Georgia to eat\n fried chicken with a knife and fork. ", answer: true))
        questions.append(Question(question: "Frogs have to drink\n lots of water ", answer: false))
        questions.append(Question(question: "Polar bears’ \nskin is black.", answer: true))
        questions.append(Question(question: "Dogs have 10 legs ", answer: false))
        questions.append(Question(question: "You see with your eyes ", answer: true))
        questions.append(Question(question: "The Sun is very cold.", answer: false))
        questions.append(Question(question: "Sheep can't fly. ", answer: true))
        questions.append(Question(question: "'B' is the first letter\n of the alphabet.", answer: false))
        questions.append(Question(question: "Japan has square watermelons.", answer: true))
        questions.append(Question(question: "You hear with your nose. ", answer: false))
        
    }
    
}
