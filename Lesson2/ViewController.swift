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
        
        Title.parametrIntTipe(8)
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
    
    class Title {
        let Tipe = 21
    static func parametrIntTipe (_ Tipe: Int) {
        switch (Tipe) {
            case 0..<10: print ("ребенок")
            case 10..<18: print ("подросток")
            case 18..<30: print ("молодой")
            case 30..<60: print ("взрослый")
                default:
            print ("пожилой")
                }
    }
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

}
