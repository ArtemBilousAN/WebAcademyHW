//
//  ViewController.swift
//  HomeWork4.1
//
//  Created by Artem Bilous on 14.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Task1
        //nameAndCount(firstName: "Artem")
        
        //Task2
        //proverkaPatronymic(patronymic: "Андреевич")
        
        //Task3
        //razdelenieSlow(nameAndLastName: "ArtemBilous")
        
        //Task4
        //let line = zadomNaPered(line: "apple it's fruit"); print(line)
        
        //Task5
        //commas(line: "1234567890")
        
        //Task6
        //checkThePasswordForStrange(line: "1234uuuuOPOW)")
        
        //Task7
        //sort(array: [200, 39, 20, 1, 55, 49, 2, 7, 99, 41, 5, 100, 99, 1])
        
        //Task8
        //translitOfLine(line: "Я хочу мороженое и играть в доту хрю хрь")
        
        //Task9
        //poiskDa(array: ["dariya", "lada", "korova", "cucumber", "grapes", "sedan"])
        
        //Task10
        antimat(line: """
            fuc" you swetie. I love this shit so much
            """)
    }
    
    func nameAndCount(firstName: String) {
        var count = 0
        for _ in firstName {
            count += 1
        }
        print("В строке \(count) символов")
        
    }
    
    func proverkaPatronymic(patronymic: String) {
        let count = patronymic.count
        let array: [Character] = Array(patronymic)
        if array[count-2] == "и" && array[count-1] == "ч" {
            print("Отчество закачиваеться на \("ИЧ")")
        } else if array[count-2] == "н" && array[count-1] == "а" {
            print("Отчество закачиваеться на \("НА")")
        } else {
            print("Отчество не закачиваеться на \("ИЧ или НА")")
        }
        
        // когда сделал я понял что можно было сделать через метод
        // patronymic.hasSuffix("ич"), но уже лень переделывать...
    }
    
    func razdelenieSlow(nameAndLastName: String) {
        let arrayOfBigLetter = "QWERTYUIOPASDFGHJKLZXCVBNM"
        var count = 0
        var countOfLetter = 0
        var numberOfSecondBigLetter = 0
        var name: String = ""
        var lastName: String = ""
        var fullName: String = ""
        
        for letter in nameAndLastName {
            countOfLetter += 1
            for char in arrayOfBigLetter {
                if letter == char {
                    count += 1
                    if count == 2 {
                        numberOfSecondBigLetter = countOfLetter
                        count += 1
                    }
                }
            }
        }
        //print(numberOfSecondBigLetter)
        count = 0
        for letter in nameAndLastName {
            if count < numberOfSecondBigLetter - 1 {
                name.append(letter)
                count += 1
            }
        }
        //print(name)
        count = 0
        for letter in nameAndLastName {
            if count >= numberOfSecondBigLetter - 1 {
                lastName.append(letter)
                count += 1
            } else {
                count += 1
            }
        }
        //print(lastName)
        fullName = name + " " + lastName
        print(fullName)
        
    }
    
    func zadomNaPered(line: String) -> String {
        var reverseLine: String = ""
        let arrayOfChar: [Character] = Array(line)
        var count = line.count - 1
        while count >= 0 {
            reverseLine.append(arrayOfChar[count])
            count -= 1
        }
        return reverseLine
    }
    
    func commas(line: String) {
        var lineForFunc = zadomNaPered(line: line)
        var count: Int = lineForFunc.count / 3
        var helpCount = 3
        if line.count < 4 {
            count = 0
        } else if line.count % 3 == 0 {
            count -= 1
        }
        print(count)
        while count > 0 {
            lineForFunc.insert(",", at: lineForFunc.index(lineForFunc.startIndex, offsetBy: helpCount))
            helpCount += 4
            count -= 1
        }
        let finalLine = zadomNaPered(line: lineForFunc)
        print(finalLine)
    }
    
    func checkThePasswordForStrange(line: String) {
        var count = 0
        var number = false
        var letter = false
        var bigLeter = false
        var specialCharacter = false
        for i in line {
            if i.isNumber {
                number = true
            } else if i.isLowercase {
                letter = true
            } else if i.isUppercase {
                bigLeter = true
            } else if i.isCurrencySymbol {
                specialCharacter = true
            } else if i.isPunctuation {
                specialCharacter = true
            } else if i.isMathSymbol {
                specialCharacter = true
            } else if i.isWhitespace {
                specialCharacter = true
            }
        }
        if number {
            count += 1
        }
        if letter {
            count += 1
        }
        if bigLeter {
            count += 1
        }
        if specialCharacter {
            count += 1
        }
        if count == 4 {
            count += 1
        }
        print("Сложность пароля = \(count)/5")
    }
    
    func sort(array: [Int]) {
        var countOfArray = array.count - 1
        print(array)
        var arrayForWork: [Int] = array
        var count = 0
        for i in 0..<countOfArray {
            count = i + 1
            while count <= countOfArray {
                if arrayForWork[count] < arrayForWork[i] {
                    let number = arrayForWork[i]
                    arrayForWork[i] = arrayForWork[count]
                    arrayForWork[count] = number
                }
                count += 1
            }
        }
        print(arrayForWork)
        for i in 0..<countOfArray {
            count = i + 1
            if count <= countOfArray {
                if arrayForWork[i] == arrayForWork[count] {
                    arrayForWork.remove(at: count)
                    countOfArray -= 1
                }
            }
        }
        print(arrayForWork)
    }
    
    func translitOfLine(line: String) {
        let dictionary: [Character: String] = ["а": "a", "б": "b", "в": "v", "г": "g", "д": "d", "е": "e", "ё": "e", "ж": "zh", "з": "z", "и": "i", "й": "yo", "к": "k", "л": "l", "м": "m", "н": "n", "о": "o", "п": "p", "р": "r", "с": "s", "т": "t", "у": "u", "ф": "f", "х": "h", "ц": "c", "ч": "ch", "ш": "sh", "щ": "sch", "ъ": "", "ь": "'", "ы": "y", "э": "e", "ю": "yu", "я": "ya", "А": "A", "Б": "B", "В": "V", "Г": "G", "Д": "D", "Е": "E", "Ё": "E", "Ж": "ZH", "З": "Z", "И": "I", "Й": "YO", "К": "K", "Л": "L", "М": "M", "Н": "N", "О": "O", "П": "P", "Р": "R", "С": "S", "Т": "T", "У": "U", "Ф": "F", "Х": "H", "Ц": "C", "Ч": "CH", "Ш": "SH", "Щ": "SCH", "Ъ": "", "Ь": "'", "Ы": "Y", "Э": "E", "Ю": "YU", "Я": "YA" ]
        let lineForWork: [Character] = Array(line)
        var finalLine: String = ""
        for index in lineForWork.indices {
            let symbol: Character = lineForWork[index]
            if dictionary[symbol] != nil {
                finalLine.append(dictionary[symbol]!)
            } else {
                finalLine.append(symbol)
            }
        }
        print(finalLine)
    }
    
    func poiskDa(array: [String]) {
        var finalArray: [String] = []
        for word in array {
            if word.contains("da") {
                finalArray.append(word)
            }
        }
        print(finalArray)
    }
    
    func antimat(line: String) {
        let array: [String] = ["Fuck", "fuck", "fuc\"", "shit", "sh1t", "fagot"]
        var finalLine: String = line
        for word in array {
            if finalLine.contains(word) {
                finalLine = finalLine.replacingOccurrences(of: word, with: "***")
            }
        }
        print(finalLine)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


