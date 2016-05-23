import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    let cheese = "cheddar"
    let fullSentense = "My favorite cheese is \(cheese)"
    return cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
var numberArray1 = [5]
var newArray = numberArray + numberArray1



// WORK HERE

var numbersDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
numbersDictionary[5] = "five"
print(numbersDictionary)

// WORK HERE

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
//for var i = 1; i <= 10; i++ {
for i in 1...10 {
    print(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
var numbers = [1,2,3,4,5,6,7,8,9,10]

for number in numbers {
    print  ("\(number)")
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters: [[String : String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    let characters = ["prune juice", "Earl Grey, hot"]
    return (characters)
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Optionals

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one

    
//    let email = userDict["mael_sayed@gatech.edu"]
//    if email != nil {
//        let unwrappedEmail = email!
//        print(unwrappedEmail)
//    }else{
//        print("")
//    }
    
    
    if let unwrappedEmail = userDict["email"] {
        return unwrappedEmail
    }else{
        return ""
    }
    
    
    
//    return userDict["email"]! //"mael-sayed@gatech.edu";
    return "user@example.com"
}




let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician","birthday" : "September 9, 1914"]

var emailAdress = [mostafaElSayedUser, marjorieBrowneUser]
// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func InputArrayOfStrings(strings:[String]) -> String{
    // Make a function that inputs an array of strings and outputs the strings separated by a semicolon
  //  let strings = ["milk", "eggs", "bread", "challah"]
    return strings.joinWithSeparator(";")
}
// WORK HERE - make your function and pass `strings` in

let expectedOutput = "milk;eggs;bread;challah"
let actualOutput = InputArrayOfStrings(strings)


//}
/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
func sortArray(array1:[String]) -> [String] {
    array1.sort {
        $0 < $1
    }
    
    return array1
}

//let sortCerealArray = sorted(cerealArray, {(array1:food, array2:food) -> Bool in
//return array1.alphabet > array2.alphabet
//})

let sortedCerealArray = sortArray(cerealArray)


var numbers1 = [0, 2, 3, 5, 10, 2]
numbers.sort {
    return $0 < $1
}




