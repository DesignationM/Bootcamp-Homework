import UIKit
let breakLine = "******************************"
/* 
 a) Create an array of Int called nums with values 0 through 20.
	Iterate over the Array and print the even numbers. */

let nums = Array(0...20)

for number in nums {
	if number % 2 == 0 {
		print(number)
	}
}
print(breakLine)

/*
b) 	In your Playground, define the following String:
	let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"
	Iterate over sentence counting the vowels (a, e, i, o, u), ignoring the case. */
 
let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"

let vowels = "aeiou"
var vowelCount = 0

for char in sentence.lowercased() {
	if vowels.contains(char) {
		vowelCount += 1
	}
}

print("The number of vowels in the sentence is:", vowelCount)

print(breakLine)


/*
c)	Create two arrays of Int with the values of 0 through 4.
	Use a nested for loop to print a mini multiplication table.
	The output, which should be multiple lines, should be in the following format:
	0 * 0 = 0 */

let array1 = Array(0...4)
let array2 = Array(0...4)

for i in array1 {
	for j in array2 {
		print("\(i) x \(j) = \(i * j)") // string interpolation
	}
	print("----------")
}

/*d) Write a function called average that takes an optional array of Int. If the array is not nil, calculate the average of the array's values and print:
“The average of the values in the array is <average>.”

Where <average> is the calculated average. If the array is nil, print:
“The array is nil. Calculating the average is impossible.”

Note: the average is calculated by summing the values in the array and dividing by the number of elements.

Call this function two times. First, pass in the nums array from part A and second by passing an optional array of Int.*/


func average(_ numbers: [Int]?) {
	if let validNumbers = numbers, !validNumbers.isEmpty {
		let sum = validNumbers.reduce(0, +)
		let avg = Double(sum) / Double(validNumbers.count)
		print("The average of the values in the array is \(avg).")
	} else {
		print("The array is nil. Calculating the average is impossible.")
	}
}

// Testing the function
average(nums)   // Should print the average
average(nil)    // Should print the nil message
average([]) 	// Should print the nil message


/*e) Create a struct called Person with the properties firstName, lastName, and age. Choose appropriate data types for the properties. Include a method on Person called details that prints the values stored in the properties in the following format:
 Name: <firstName> <lastName>, Age: <age>

Create an instance of Person called person. Pass your first name, last name, and age for the properties. Finally, call the method details. */

struct Person {
	var firstName: String
	var lastName: String
	var age: Int
	
	func details() {
		print("Name: \(firstName) \(lastName), Age: \(age)")
	}
	
	func fullName() -> String {
		return "\(firstName) \(lastName)"
	}
}

// Creating an instance of Person
let person = Person(firstName: "John", lastName: "Wick", age: 45)

// Calling the details method
person.details()


/*f) Create a class called Student with two properties: person of type Person and grades, an array of Int. The class must have a method called calculateAverageGrade that takes no parameters and returns a Double. Include a method called details that prints the values of the properties stored in Student along with the average grade in the following format:
 Name: <firstName> <lastName>, Age: <age>, GPA: <average grade>.

Create an instance of Student called student passing in your first name, last name, age, and an array of five numbers: 94, 99, 81, 100, 79. Next call the details method to output the details of the student. */

class Student {
	var person: Person
	var grades: [Int]
	
	init(person: Person, grades: [Int]) {
		self.person = person
		self.grades = grades
	}
	
	func calculateAverageGrade() -> Double {
		let sum = grades.reduce(0, +)
		return Double(sum) / Double(grades.count)
	}
	
	func details() {
		let averageGrade = calculateAverageGrade()
		print("Name: \(person.fullName()), Age: \(person.age), GPA: \(averageGrade)")
	}
}

// Creating an instance of Student
let myPerson = Person(firstName: "John", lastName: "Wick", age: 45)
let student = Student(person: myPerson, grades: [94, 99, 81, 100, 79])

// Calling the details method
student.details()


