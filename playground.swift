// Unary
var a       = 1
var b: Int? = 1
print("Prefix: \(-a) Postfix: \(b!)")

// Binary
var c = 1 + 2 // 1 and 2 - operand

// Ternary
var n = true ? 1 : 2

// Сравнения:
a == a
a != a
a > a
a < a
a >= a
a <= a
// Indentic - var user = User(); var test = user; if user === test { print("Success") } Output: Success

// Присваивание:
var p = 1
var str = "Hello"
// Составной оператор -
p += 1 // Output: 2
str += " World" // Output: Hello World - concatenation

// Диапазон:

// Замкнутый - 
for item in 0...5 {
    print(item) // Output: 1, 2, 3, 4, 5
}
// Ползамкнутый - 
for item in 0..<5 {
    print(item) // Output: 1, 2, 3, 4
}
// Односторонний -
var arr = ["Alex", "Lexa", "Zina", "Petya"]
for item in arr[...3] {
    print(item) // Output: "Alex", "Lexa", "Zina", "Petya"
}
// Односторонний (исключающий)-
for item in arr[..<3] {
    print(item) // Output: "Alex", "Lexa", "Zina"
}

// Арифметический:
// *
// /
// +
// -
// a % b - остаток
// unary plus - default
// unary minus -
var int = 1
print(-int) // Output: -1

// Логический:
// Не (!a)
// И (a == 1 && b == 1)
// Или (a == 1 || b == 1)

// Объединение по Nil
var value: Int? = 1
value != nil ? value! : 2 // Output: 1

// Инкремент / Декремент - не используется со Swift 3.0
