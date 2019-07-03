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

        // Do any additional setup after loading the view.
    }

    
    @IBAction func saveAction(_ sender: Any) {
        
        delegate.passingdata(name: nameTextField.text!, dept: deptTextField.text!, mobile: mobileTextField.text!)
        
    }
    
    @IBAction func backAction(_ sender: Any) {
        
        let firstVC = self.storyboard?.instantiateViewController(withIdentifier: "viewController1") as! ViewController
        
        
        self.navigationController?.pushViewController(firstVC, animated: true)
        
        
        
        
        
       
    }
    
    
    
    
    
}
