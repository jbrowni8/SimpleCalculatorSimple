//
//  ViewController.swift
//  SimpleCalculatorSimple
//
//  Created by James Browning on 1/22/17.
//  Copyright © 2017 James Browning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var globalLabel : String = ""
    var sum : Int = 0
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let title = sender.currentTitle {
            globalLabel.append(title)
            label.text = globalLabel
        }
    }
    
    @IBAction func plus(_ sender: UIButton) {
        if let firstHalf = label.text {
            globalLabel = ""
            sum += Int(firstHalf)!
        }
    }
    
    @IBAction func equals(_ sender: UIButton) {
        if let secondHalf = label.text {
            globalLabel = ""
            sum += Int(secondHalf)!
        }
        label.text = "\(sum)"
        sum = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

