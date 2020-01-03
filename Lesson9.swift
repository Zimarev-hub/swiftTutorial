import Foundation 
/* 
Task 1: 
Creat string random text minimum 200 symbols. 
Uses cycle and operator switch count sum vowles and 
consonants numbers and symbols 
*/ 
var tup = (vowels: 0, consonants: 0, symbols: 0) 
var str = 
"""
Depart do be so he enough talent. Sociable formerly six but handsome. 
Up do view time they shot. He concluded disposing provision by questions 
as situation. Its estimating are motionless day sentiments end. Calling an imagine at forbade. 
At name no an what like spot. Pressed my by do affixed he studied. 
""" 
for char in str { 
switch char { 
case "a", "e", "i", "o", "u", 
"A", "E", "I", "O", "U": 
tup.vowels += 1 
case "a"..."z", "A"..."Z" : 
tup.consonants += 1 
default: 
tup.symbols += 1 
} 
} 
print("Info : \(tup)") // Output - Info : (vowels: 21, consonants: 31, symbols: 8) 

/* 
Task 2: 
Create switch which the get age human and output discription life stage 
*/ 

var age = 15 
switch age { 
case 0...5: 
print("Kid") 
case 6...15: 
print("Schoolkid") // Output: Schoolkid 
case 16...20: 
print("Student") 
default: 
print("What? How old are you?") 
} 

/* 
Task 3: 
You have Name, Surename of the student. If Name start with A or O then contact to student 
by name, if name start with B or D then contact to student by name and surename, 
if no then contact student by surename 
*/ 

var student = (Name: "Zlex", Surename: "Popov") 
switch student { 
case let (name, _) where name.hasPrefix("A") || name.hasPrefix("O"): 
print("Hello, \(name)") 
case let (name, surename) where name.hasPrefix("B") || name.hasPrefix("D"): 
print("Hello, \(name + " " + surename)") 
default: 
print("Hello, \(student.Surename)") // Outout: Hello, Popov 
} 

/* 
Task 4: 
Imagine you play in the sea war and you some ships left on the 10x10 field. 
You need to create switch then get tuple with coordinate and return one of several 
options: miss, hit, killed
*/ 
typealias Point = (x: String, y: Int)

var shipOne  = Point(x: "A", y: 1)
var shipOne2 = Point(x: "A", y: 2)
var shipOne3 = Point(x: "A", y: 3)
var shipOne4 = Point(x: "A", y: 4)
var shipOne5 = Point(x: "A", y: 9)

var shipTwo  = [Point(x: "A", y: 5), Point(x: "A", y: 6)]

var arrShips = [shipOne, shipOne2, shipOne3, shipOne4, shipOne5]
var arrShipsTwo = [shipTwo]

var dic = ["One": arrShips, "Two": arrShipsTwo] as [String : Any]

var someValue = (x: "B", y: 9)
var index = 0
var hp = 0
for i in dic.keys {
    switch i {
    case "One":
        for item in 0..<arrShips.count {
            print(arrShips[item] == someValue ? "Killed by coordinates \(someValue)" : "Miss \(arrShips[item])")
        }
    case "Two":
        hp = 1
        for i in shipTwo {
            print(i == someValue && hp != 0 ? "hit by coordinates \(i) \(hp -= 1)" : "Miss \(i)")
            if i == someValue && hp == 0 {
                print ("Killed by coordinates \(i)")
            }
        }
    default:
        break
    }
    index += 1
} 
/* Output:
Miss (x: "A", y: 1)
Miss (x: "A", y: 2)
Miss (x: "A", y: 3)
Miss (x: "A", y: 4)
Miss (x: "A", y: 9)
Miss (x: "A", y: 5)
Miss (x: "A", y: 6)
*/