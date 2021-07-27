//
//  ViewController.swift
//  Lesson2
//
//  Created by Cергей Иванович on 26.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {  //функция жизненного цикла UIViewController
        super.viewDidLoad()

 //ЗАДАЧА 1
        print ("сложение"); funcMath(add: 12, ition: 15)
        print ("вычитание");funcMath(substr: 15, action: 16)
        print ("умножение"); funcMath(multi: 11, plication: 13) //?????как это записать одной строкой?????
        print ("деление");funcMath(divi: 13, sion: 2)
       
// ЗАДАЧА 2
        var number = 3244
        print ("сумма цифр числа \(number)"); sumOfTheNumber4(number: &number)  //?????? почему не работает  sumOfTheNumber4(number: &3244)
        
        
// ЗАДАЧА 3
        print ("5 в 6 степени"); exponentNumber(number: 5, degree: 6)
        
//ЗАДАЧА 4
        var z1 = 4
        print ("факториал числа \(z1)"); factorialNumber(Number: &z1)   //????????почему не работает print ("значение факториала = \(factorialNumber(Number: &z1))")
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
