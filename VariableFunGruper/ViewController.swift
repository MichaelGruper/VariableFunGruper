//
//  ViewController.swift
//  VariableFunGruper
//
//  Created by MICHAEL GRUPER on 8/26/24.
//

import UIKit

//steps to get return key to dismiss keyboard
//1 Add a delegate
//2 Attach the delegate to the textField
//3 Write textFieldShouldReturn function

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textFieldOutlet: UITextField!
    let pony = 6 // constant declared and initialized(type inference)
    var dog = 7.5 //declare and initialize a variable
    var cat : Int? //declaring an Optional(could be nil)
    var horse: Double! //delcaring a non Optional(can't be nil)
    var ant: String = "" //declaring a variable (must initialize in init/constructor)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldOutlet.delegate = self
        
        //safe unwrapping cat
        if let blah = cat{
            print(blah+5)
            print("cat is " + String(blah))
            print("cat is \(blah)")//string interpolation
        }
        else{
            print("Nothing in cat")
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        var pig = textFieldOutlet.text!
        // nil coalescing (giving a default value if it is nil)
        var frog = Int(pig) ?? 0
        print(frog + 5)
        
        textFieldOutlet.resignFirstResponder() //makes keyboard dissappear but you need to do this in all text fields
        
    }
    //automatically gets called when user hits return on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldOutlet.resignFirstResponder()
    }
}

