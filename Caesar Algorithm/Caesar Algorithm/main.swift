import Foundation
import Darwin


let alphabets: [String] = [  "a", "A", "b", "B", "c", "C", "d", "D", "e", "E", "f", "F", "g", "G",
                             "h", "H", "i", "I", "j", "J", "k", "K", "l", "L", "m", "M", "n", "N",
                             "o", "O", "p", "P", "q", "Q", "r", "R", "s", "S", "t", "T", "u", "U",
                             "v", "V", "w", "W", "x", "X", "y", "Y", "z", "Z"                         ]

let specialCharacters: [String] = [   "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+",
                                      "[", "]", "{", "}", "\\", "|", ";", ":", "'", "\"", ",", ".", "<", ">",
                                      "/", "?", "`", "~", "§", "±", "•", "∞", "¶", "€", "£", "¥", "©", "®", "™"      ]

print("Would you like to encode (1) or decode (2)? (Type the corresponding number): ")
let yourChoice = readLine()

if yourChoice != "1" && yourChoice != "2" {
    print("Invalid input!")
    exit(0)
}

print()
print("Enter the string: ")
let enteredString = readLine()

// hardcoded if someone doesn't want to take input via console
//var enteredString = "Test String for Encoding XXZZAABB ..?"  // for encoding
//var enteredString = "Whvw Vwulqj iru Hqfrglqj AACCDDEE ..?"  // for decoding
//var yourChoice: Int = 1   // num 1 for enoding and 2 for decoding

let words = enteredString!.split(separator: "")

var wordArray: [String] = []
var sentence: String = ""
let encodedOrDecoded = ["Encoded", "Decoded"]

var num: Int = 0

func implementation(_: String) {
    for word in words {
        let instances = word.split(separator: "")
        var instanceNumber = 0
        for instance in instances {
            if alphabets.contains(String(instance)) {
                num = (yourChoice == "1") ? 46 : 6
                instanceNumber = alphabets.firstIndex(of: String(instance))!
                if instanceNumber < num {
                    wordArray.append(alphabets[num == 46 ? instanceNumber + 6 : instanceNumber + 46])
                } else if instanceNumber >= num {
                    wordArray.append(alphabets[instanceNumber - num])
                }
            } else if specialCharacters.contains(String(instance)) {
                wordArray.append(String(instance))
            } else {
                wordArray.append(String(instance))
            }
        }
    }
    sentence = wordArray.joined()
    print()
    print("This is the entered string: \(enteredString!)")
    print("This is the \(encodedOrDecoded[(Int(yourChoice!)!) - 1]) string: \(sentence)")
    print()
}

implementation(yourChoice!)
