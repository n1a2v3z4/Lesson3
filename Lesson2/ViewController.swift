//
//  ViewController.swift
//  Lesson2
//
//  Created by Cергей Иванович on 26.07.21.
//

import UIKit
ViewController.printName()  // вызов статической функции с указанием на класс

class ViewController: UIViewController {
    
    static func printName () {
        print ("Name")
        
    }
    
 

    
    
    override func viewDidLoad() {  //функция жизненного цикла UIViewController
        super.viewDidLoad()
    }

   
    }
   
class Car {
    var type: String = "Sedan"
    var mark: String = "Geely"
    
    func driveForvard() {
}
    func driveBackward() {
}
    func run() {
        driveForvard()
        self.driveForvard()  //ссылка на самого себя
}
}

class B {
    func createClassA() {
        let car: Car = Car() //приобретает параметры сlass Car
        car.driveForvard()    //может использовать параметры class Car
    }
}
