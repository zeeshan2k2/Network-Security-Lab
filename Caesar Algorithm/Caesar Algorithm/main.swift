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


print("Would you like to encode (1) or decode (2)? (Type the corresponding number): ")
let yourChoice = readLine()

print("Enter the string: ")
let enteredString = readLine()

// hardcoded if someone doesn't want to take input via console
//var enteredString = "Test String for Encoding XXZZAABB ..?"  // for encoding
//var enteredString = "Whvw Vwulqj iru Hqfrglqj AACCDDEE ..?"  // for decoding
//var yourChoice: Int = 1   // num 1 for enoding and 2 for decoding

let words = enteredString!.split(separator: "")

var wordArray: [String] = []
var sentence: String = ""



func implementation(_: String) {
    for word in words {
        let instances = word.split(separator: "")
        var instanceNumber = 0
        if yourChoice == "1" {
            for instance in instances {
                if alphabets.contains(String(instance)) {
                    instanceNumber = alphabets.firstIndex(of: String(instance))!
                    if instanceNumber < 46 {
                        wordArray.append(alphabets[instanceNumber + 6])
                    } else if instanceNumber >= 46 {
                        instanceNumber = instanceNumber - 46
                        wordArray.append(alphabets[instanceNumber])
                    }
                } else if specialCharacters.contains(String(instance)) {
                    wordArray.append(String(instance))
                } else {
                    wordArray.append(String(instance))
                }
            }
        } else if yourChoice == "2" {
            for instance in instances {
                if alphabets.contains(String(instance)) {
                    instanceNumber = alphabets.firstIndex(of: String(instance))!
                    if instanceNumber >= 6 {
                        wordArray.append(alphabets[instanceNumber - 6])
                    } else if instanceNumber < 6 {
                        wordArray.append(alphabets[51 - instanceNumber])
                    }
                } else if specialCharacters.contains(String(instance)) {
                    wordArray.append(String(instance))
                } else {
                    wordArray.append(String(instance))
                }
            }
        } else {
            print("You have entered an invalid number!")
            exit(0)
        }
    }
    sentence = wordArray.joined()
    print("This is the answer string: \(sentence)")
}

implementation(yourChoice!)

//for word in words {
//    let instances = word.split(separator: "")
//    var instanceNumber = 0
//    if yourChoice == "1" {
//        for instance in instances {
//            if alphabets.contains(String(instance)) {
//                instanceNumber = alphabets.firstIndex(of: String(instance))!
//                if instanceNumber < 46 {
//                    wordArray.append(alphabets[instanceNumber + 6])
//                } else if instanceNumber >= 46 {
//                    instanceNumber = instanceNumber - 46
//                    wordArray.append(alphabets[instanceNumber])
//                }
//            } else if specialCharacters.contains(String(instance)) {
//                wordArray.append(String(instance))
//            } else {
//                wordArray.append(String(instance))
//            }
//        }
//    } else if yourChoice == "2" {
//        for instance in instances {
//            if alphabets.contains(String(instance)) {
//                instanceNumber = alphabets.firstIndex(of: String(instance))!
//                if instanceNumber >= 6 {
//                    wordArray.append(alphabets[instanceNumber - 6])
//                } else if instanceNumber < 6 {
//                    wordArray.append(alphabets[51 - instanceNumber])
//                }
//            } else if specialCharacters.contains(String(instance)) {
//                wordArray.append(String(instance))
//            } else {
//                wordArray.append(String(instance))
//            }
//        }
//    } else {
//        print("You have entered an invalid number!")
//        exit(0)
//    }
//}

//sentence = wordArray.joined()

//print(wordArray)

//print("This is the answer string: \(sentence)")

