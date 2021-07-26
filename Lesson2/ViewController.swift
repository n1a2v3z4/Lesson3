//
//  ViewController.swift
//  Lesson2
//
//  Created by Cергей Иванович on 26.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    static func printName () {
        print ("Name")
        
    }
    
 

    
    
    override func viewDidLoad() {  //функция жизненного цикла UIViewController
        super.viewDidLoad()
        ViewController.printName()  // вызов статической функции с указанием на класс

    }

   
    }
   
class Car {
    var type: String = "Sedan"
    var mark: String = "Geely"
    
    func driveForvard() {
}
   static func driveBackward() {
}
    func run() {
        driveForvard()
        self.driveForvard()  //ссылка на самого себя
}
}

class B {
    func createClassA() {
        let car: Car = Car() //приобретает параметры сlass Car создали объек класса
        car.driveForvard()    //может использовать параметры class Car
        Car.driveBackward()  // обращаемся к статической функции
    
    }
}
// если функция статическая то можно не создавать объект клааса о вызывать через класс например Car.driveBackward()



func printSomething (name: String) {
    print (name)
}
func printSomething (surname: String) {     // полиморфизм (функции с одинаковым названием) но разными параметрами
    print (surname)
}
