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
        
    }
    
    func printHelloWorld() {
        let halloWorld = "helloWorld"
        print (halloWorld)
        
        func printMyName() {
            print ("nikolay")
        }
        printMyName()
    }
    
}

