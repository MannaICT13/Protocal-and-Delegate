//
//  SecondViewController.swift
//  Protocal and Delegate
//
//  Created by USER on 7/25/18.
//  Copyright © 2018 mCubes. All rights reserved.
//

import UIKit

protocol PassData {

    func passingdata(name: String,dept:String,mobile:String)
    
}

class SecondViewController: UIViewController {

   
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var deptTextField: UITextField!
    
    @IBOutlet weak var mobileTextField: UITextField!
    
    var delegate:PassData!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func saveAction(_ sender: Any) {
        
        if nameTextField.text == ""{
            
            showAlert(title: "Error", msg: "Please Enter Name", delegete: self)
        } else if deptTextField.text == ""{
                   
                   showAlert(title: "Error", msg: "Please Enter Dept", delegete: self)
               }
        else if mobileTextField.text == ""{
                   
                   showAlert(title: "Error", msg: "Please Enter Mobile Number", delegete: self)
               }
        else{
            
        delegate.passingdata(name: nameTextField.text!, dept: deptTextField.text!, mobile: mobileTextField.text!)
            
            nameTextField.text?.removeAll()
            deptTextField.text?.removeAll()
            mobileTextField.text?.removeAll()
        }
    }
    
    func showAlert(title : String , msg : String , delegete : AnyObject){
        
        //let alert = UIAlertView()
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)

        alert.addAction(ok)
       self.delegate = delegate as AnyObject? as? PassData
        self.present(alert, animated: true, completion: nil)
        //alert.addButton(withTitle: "OK")
      // alert.delegate = delegate as AnyObject?
       // alert.show()
        
    }
    
    
    
}
