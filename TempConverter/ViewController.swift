//
//  ViewController.swift
//  TempConverter
//
//  Created by Dylan Porteus on 11/14/16.
//  Copyright © 2016 Dylan Porteus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    @IBOutlet weak var conversionNumLabel: UILabel!
    
    @IBOutlet weak var tempEntry: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func convertClicked(_ sender: AnyObject) {
        if let result = tempEntry.text{
            if(result == ""){
                return
            }
            else{
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    updateCountByOne()
                 
                }
            }
        }
    }
    
    func updateCountByOne (){
        count += 1
        conversionNumLabel.text = String(count) + " Conversions"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

