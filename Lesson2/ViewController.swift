//
//  ViewController.swift
//  Lesson2
//
//  Created by Cергей Иванович on 26.07.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
        printHelloWorld()
        printName(name: "Vlad", "Sergei")
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

