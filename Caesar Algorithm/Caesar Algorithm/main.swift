//
//  main.swift
//  Caesar Algorithm
//
//  Created by Zeeshan Waheed on 29/07/2024.
//

import Foundation
import Darwin



let alphabets: [String] = [  "a", "A", "b", "B", "c", "C", "d", "D", "e", "E", "f", "F", "g", "G",
                    "h", "H", "i", "I", "j", "J", "k", "K", "l", "L", "m", "M", "n", "N",
                    "o", "O", "p", "P", "q", "Q", "r", "R", "s", "S", "t", "T", "u", "U",
                    "v", "V", "w", "W", "x", "X", "y", "Y", "z", "Z"                      ]



// Taking input from the user
//print("Enter some text:")
//if let userInput = readLine(), !userInput.isEmpty {
//    // Printing the input
//    print("You entered: \(userInput)")
//} else {
//    // No input received, exiting the program
//    print("No input received.")
//    exit(0) // Exiting the program with status code 0
//}


let enteredString = "Test String for Encoding XXZZAABB ..?"

let words = enteredString.split(separator: " ")

//print(word)

for word in words {
    var instances = word.split(separator: "")
    for instance in instances {
        print(instance)
    }
}



