//
//  ViewController.swift
//  DataStorage
//
//  Created by Filip on 17.05.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    
    
    @IBAction func numberButton(_ sender: Any) {
        
        UserDefaults.standard.set(numberField.text, forKey: "number")
        
    }
    
    
    @IBOutlet weak var numberLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            
            numberField.text = number
            
            //numberLabel.text = number
            
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

