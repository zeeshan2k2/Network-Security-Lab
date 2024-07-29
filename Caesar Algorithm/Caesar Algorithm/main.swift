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
                    "v", "V", "w", "W", "x", "X", "y", "Y", "z", "Z"    
]


let specialCharacters: [String] = [
    "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+",
    "[", "]", "{", "}", "\\", "|", ";", ":", "'", "\"", ",", ".", "<", ">",
    "/", "?", "`", "~", "§", "±", "•", "∞", "¶", "€", "£", "¥", "©", "®", "™"
]


let enteredString = "Test String for Encoding XXZZAABB ..?"

let words = enteredString.split(separator: "")
//let words = enteredString.map { String($0) }
var wordArray: [String] = []
var sentence: String = ""

//print(word)

var count = 0 // to keep count

for word in words {
    var instances = word.split(separator: "")
    var instanceNumber = 0
    for instance in instances {
        count = 0
        if alphabets.contains(String(instance)) {
//            print(alphabets.firstIndex(of: String(instance))!)
            instanceNumber = alphabets.firstIndex(of: String(instance))!
            if instanceNumber < 46 {
                wordArray.append(alphabets[instanceNumber + 6])
            } else if instanceNumber >= 46 {
                instanceNumber = instanceNumber - 46
                wordArray.append(alphabets[instanceNumber])
                print(instance)
            }
//            wordArray.append(alphabets.firstIndex(of: String(instance)))
//            print("\(instance)")
        } else if specialCharacters.contains(String(instance)) {
            wordArray.append(String(instance))
//            print(instance)
        } else {
            wordArray.append(String(instance))
//            print(instance)
        }
        count += 1
    }
}

sentence = wordArray.joined()

print(wordArray)

print("This is the sentence: \(sentence)")


print("Whvw Vwulqj iru Hqfrglqj AACCDDEE ..?")
