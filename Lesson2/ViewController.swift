//
//  ViewController.swift
//  Lesson2
//
//  Created by Cергей Иванович on 26.07.21.
//

import UIKit

class ViewController: UIViewController {

    var array: [String] = ["123", "qswe"]
    let arrayOne: [String] = Array()  //пустой массив
    let arrayOne1: [String] = Array<String>(["asda", "asd"])  //еще один способ
    let arrrayOne2: [String] = Array(arrayLiteral: "asf", "awe")
    let array4 = [String] ()  // одна из разновидностей
    

    
    override func viewDidLoad() {  //функция жизненного цикла UIViewController
    // Do any additional setup after loading the view.
        printHelloWorld()
        array.append("d")  //добавление в массив
        array.insert("zzzz", at: 1) // добавление zzzz на 1  позицию  массива
        printName()                     //используется дефолтный параметр
        print (array)
        print (array[1]) //элемент массива с индексом 0
        array.remove(at: 3)  //удаление по индексу 4
       print (array.first) //0 элемент массива
        print (array.last) // последний элемент массива
        
        
    }

    
    func printElementOfArray(array: [String], index: Int) {
        if index >= 0 && index < array.count {
            print (array[index])
        } else {
            print ("invalid index")
        }
         
    }
    
    func printHelloWorld() {
        let halloWorld = "helloWorld"
        print (halloWorld)
        
        func printMyName(_ name: inout String) {  //inout показывает что name может меняться
            name = "zzzzzz"
            print (name)
        }
        var name1 = "string"
        printMyName(&name1)           //вызываеи функцию с изменяемым параметром
    }
    func printName () {
       let name = "Vlad"   //доступна только внутри функции (локальная). Время жизни переменной пок аработает функция
        func ads () {       // доступна только в  func printName
            
        }
    }
}

