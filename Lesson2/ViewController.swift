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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
        printHelloWorld()
        printName(name: "Vlad", "Sergei")
        array.append("d")  //добавление в массив
        array.insert("zzzz", at: 1) // добавление zzzz на 1  позицию  массива
        
        print (array)
        print (array[1]) //элемент массива с индексом 0
        
        
        
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
    func printName (name: String...) {      // в funcможет быть как один так и несколько параметров
        print ("мое имя \(name)")
    }


}

