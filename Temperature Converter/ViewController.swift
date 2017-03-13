//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Ciara Burkett on 3/13/17.
//  Copyright © 2017 Ciara Burkett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Int = 0
    
    @IBOutlet weak var conversionLabel: UILabel!
    
    @IBOutlet weak var tempEntry: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func convertClicked(_ sender: Any) {
        print("Convert clicked.")
        
        if let result = tempEntry.text {
            if (result == "") {
                return
            }
            else {
                if let num = Double(result) {
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    
                    countPlus1()
                }
            }
        }
    }
    
    func countPlus1() {
        count += 1
        conversionLabel.text = String(count) + " Conversions"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

