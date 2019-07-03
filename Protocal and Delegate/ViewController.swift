//
//  ViewController.swift
//  Protocal and Delegate
//
//  Created by USER on 7/25/18.
//  Copyright © 2018 mCubes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,PassData {
    
    

    @IBOutlet weak var lblOne: UILabel!
    
    @IBOutlet weak var lblTwo: UILabel!
    
    @IBOutlet weak var lblThree: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func goAction(_ sender: Any) {
        
     
        let secondVC =
            self.storyboard?.instantiateViewController(withIdentifier: "viewController") as! SecondViewController
      
        secondVC.delegate = self;
        
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    func passingdata(name: String, dept: String, mobile: String) {
        lblOne.text = name;
        lblTwo.text = dept;
        lblThree.text = mobile;
        
    }
    
    
    

}

