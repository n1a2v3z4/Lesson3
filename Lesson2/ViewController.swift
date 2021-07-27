//
//  ViewController.swift
//  Lesson2
//
//  Created by Cергей Иванович on 26.07.21.
//

import UIKit

class ViewController: UIViewController {
    
//    static func printName () {
//        print ("Name")
//
//    }
    
 

    
    
    override func viewDidLoad() {  //функция жизненного цикла UIViewController
        super.viewDidLoad()
//        ViewController.printName()  // вызов статической функции с указанием на класс
        
//        Title.parametrIntTipe(8)
 //ЗАДАЧА 1
        funcMath(add: 12, ition: 15)
        funcMath(substr: 15, action: 16)
        funcMath(multi: 11, plication: 13)
        funcMath(divi: 13, sion: 2)
       
// ЗАДАЧА 2
        var number = 3244
        sumOfTheNumber4(number: &number)  //?????? почему не работает  sumOfTheNumber4(number: &3244)
        
        
// ЗАДАЧА 3
     exponentNumber(number: 5, degree: 6)
//ЗАДАЧА 4
        var z1 = 4
       factorialNumber(Number: &z1)   //????????почему не работает print ("значение факториала = \(factorialNumber(Number: &z1))")
    }
/* 1. Создать 4 универсальных функции сложения, вычитания, умножения и деления(используя перегрузку функций) Т.е будет 4 функции с одинаковыми названиями, но ,например, разными именами параметров. По итогу функция должна выводить в консоль результат операции
     */
    func funcMath (add: Int, ition: Int) {   //сложение
        print (add + ition)
    }
    func funcMath (substr: Int, action: Int) {   //вычитание
        print (substr - action)
    }
    func funcMath (multi: Int, plication: Int) {   //умножение
        print (multi * plication)
    }
    func funcMath (divi: Int, sion: Int) {   //деление
        if sion == 0 {
            print ("деление на 0 запрещено")
        } else {
            
            print (Float(divi) / Float(sion))
            
        }
    }
}
//ЗАДАЧА 2
    /* 2. Создать функцию, которая будет вычислять сумму цифр четырехзначного числа. Т.е функция должна иметь параметр с типом Int. Также функция должна содержать проверку на то что число действительно четырехзначное. По итогу функция должна выводить в консоль сумму цифр четырехзначного числа

*/
func sumOfTheNumber4 (number: inout Int) {
    
    if String(number).count == 4 {
        var summNumber = 0
        for i in 1...4 {
            summNumber += number % 10
            number = Int(number/10)
        }
        print (summNumber)
    }
    else
    {
        print ("число не четырехзначное")
    }
}

// ЗАДАЧА 3 3.  Создать функцию, которая будет возводить число в степень. Т.е функция должна содержать два параметра: число и степень. По итогу она должна выводить результат в консоль.
func exponentNumber (number: Int, degree: Int) {
    let exponent = Int(pow(Double(number), Double(degree)))
   print (exponent)
}

// ЗАДАЧА 4. Создать функцию, которая будет вычислять факториал числа. Т.е функция должна содержать один параметр с типом Int. По итогу она должна выводить результат в консоль.

func factorialNumber (Number: inout Int) {
    var result = 1
    if Number == 0 { result = 1; print (result)}
    else { if Number < 0 { print ("факториалы только положительные числа")}
    else {
        while Number > 0  {
            result = result * Number
            Number = Number - 1
        }
        print(result)
    }
}
}


//class Car {
//    var type: String = "Sedan"
//    var mark: String = "Geely"
//
//    func driveForvard() {
//}
//   static func driveBackward() {
//}
//    func run() {
//        driveForvard()
//        self.driveForvard()  //ссылка на самого себя
//}
//}

//class B {
//    func createClassA() {
//        let car: Car = Car() //приобретает параметры сlass Car создали объек класса
//        car.driveForvard()    //может использовать параметры class Car
//        Car.driveBackward()  // обращаемся к статической функции
//
//    }
//}
// если функция статическая то можно не создавать объект клааса о вызывать через класс например Car.driveBackward()



//func printSomething (name: String) {
//    print (name)
//}
//func printSomething (surname: String) {     // полиморфизм (функции с одинаковым названием) но разными параметрами
//    print (surname)
//}

//class Title {
//static func parametrIntTipe (_ Tipe: Int) -> String {
//    switch (Tipe) {
//        case 0..<10: return ("ребенок")
//        case 10..<18: return ("подросток")
//        case 18..<30: return ("молодой")
//        case 30..<60: return ("взрослый")
//            default:
//        return ("пожилой")
//            }
//
//}
    
//    class Title {
//        let Tipe = 21
//    static func parametrIntTipe (_ Tipe: Int) {
//        switch (Tipe) {
//            case 0..<10: print ("ребенок")
//            case 10..<18: print ("подросток")
//            case 18..<30: print ("молодой")
//            case 30..<60: print ("взрослый")
//                default:
//            print ("пожилой")
//                }
//    }
//    }
//
//
//
//    }
//    class B {
//        func createClassB() {
//    let title: Title = Title() //приобретает параметры сlass Car создали объек класса
//            title.parametrIntTipe(8)       //может использовать параметры class Car
//
//        }
//    }
//    }
//    func zz () {
//        print(Title.parametrIntTipe(25))
//    }
//
//    func calculator (X:Double, Y: Double, Z: String) {
//        var a = 0
//        switch (Z) {
//        case "+": a = Int(X + Y)
//        print (a)
//        case "-": a = X - Y
//        print (a)
//        case "*": a = X * Y
//        print (a)
//
//        default:
//            print ("ne verno")
//        }
//    }
//}

//}


