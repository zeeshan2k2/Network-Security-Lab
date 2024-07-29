import Foundation

//
//let alphabets: [String] = [  "a", "A", "b", "B", "c", "C", "d", "D", "e", "E", "f", "F", "g", "G",
//                    "h", "H", "i", "I", "j", "J", "k", "K", "l", "L", "m", "M", "n", "N",
//                    "o", "O", "p", "P", "q", "Q", "r", "R", "s", "S", "t", "T", "u", "U",
//                    "v", "V", "w", "W", "x", "X", "y", "Y", "z", "Z"                      ]
//
//
//let textEntered: String = "Zeeshan"
//
//var sentence = ""
//var wordArray: [String] = [] // the array containg individual strings, later joined and added to resultArray
//var resultArray: [String] = []  // final array containing encoded words
//
//
//var string = "Whvw Vwulqj iru Hqfrglqj AACCDDEE ..?"
//var splittedString = string.split(separator: " ")
//
////print(splittedString)
//
//var num = 0
//
//for i in splittedString {
//    for instance in i {
//        for letter in alphabets[...46] {
//            if String(instance) == letter {
////                wordArray.append(String(num))
//                print(letter)
//            }
//        }
//    }
//
//}
//
//readLine()
//
//print(wordArray)
//
//
//
//var question = ["Encode", "Decode"]
//









print("Enter some text:")
if let userInput = readLine() {
    print("You entered: \(userInput)")
}








//import Foundation
//
//// Function to encode or decode a string using Caesar cipher
//func caesarCipher(input: String, shift: Int, isEncoding: Bool) -> String {
//    // Define the alphabet to use for shifting
//    let alphabet = "abcdefghijklmnopqrstuvwxyz"
//    // Initialize an empty string to store the result
//    var result = ""
//
//    // Iterate through each character in the input string
//    for char in input {
//        // Convert the character to lowercase and find its index in the alphabet
//        if let lowerChar = char.lowercased().first,
//           let lowerIndex = alphabet.firstIndex(of: lowerChar) {
//            
//            // Determine the shift amount based on encoding or decoding
//            let shiftAmount = isEncoding ? shift : -shift
//            let alphabetCount = alphabet.count
//
//            // Calculate the current index of the character in the alphabet
//            let currentIndex = alphabet.distance(from: alphabet.startIndex, to: lowerIndex)
//
//            // Calculate the new index after applying the shift
//            // (Add alphabetCount to handle negative indices and wrap around using modulo)
//            let newIndex = (currentIndex + shiftAmount + alphabetCount) % alphabetCount
//
//            // Get the new character at the new index in the alphabet
//            let newChar = alphabet[alphabet.index(alphabet.startIndex, offsetBy: newIndex)]
//
//            // Append the new character to the result
//            // Convert to uppercase if the original character was uppercase
//            result.append(char.isUppercase ? String(newChar).uppercased() : String(newChar))
//        } else {
//            // If the character is not in the alphabet (e.g., punctuation, spaces), add it as is
//            result.append(char)
//        }
//    }
//
//    // Return the final encoded or decoded string
//    return result
//}
//
//// Example usage
//let originalString = "Test String for Encoding XXZZAABB ..?"
//let shift = 3
//let encodedString = caesarCipher(input: originalString, shift: shift, isEncoding: true)
//let decodedString = caesarCipher(input: encodedString, shift: shift, isEncoding: false)
//
//// Print results
//print("Original String: \(originalString)")
//print("Encoded String: \(encodedString)")
//print("Decoded String: \(decodedString)")

