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
    var plusIsPressed : Bool = false
    var equalsIsPressed : Bool = false
    var buttonPressed : Bool = false

    var sum : Int = 0
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if !equalsIsPressed {
            buttonPressed = true
            if let title = sender.currentTitle {
                globalLabel.append(title)
                label.text = globalLabel
                plusIsPressed = false
            }
        } else {
            globalLabel = ""
            label.text = globalLabel
        }
    }
    
    @IBAction func plus(_ sender: UIButton) {
        equalsIsPressed = false
        if !plusIsPressed {
            globalLabel = ""
            plusIsPressed = true
        }
        
        if let fromLabel = label.text {
            if buttonPressed {
                print(fromLabel)
                sum += Int(fromLabel)!
                label.text = "\(sum)"
                buttonPressed = false
                globalLabel = ""
            }
        }
    }
    
    @IBAction func equals(_ sender: UIButton) {
        if !equalsIsPressed {
            if let fromLabel = label.text {
                if !plusIsPressed {
                    sum += Int(fromLabel)!
                    label.text = "\(sum)"
                    globalLabel = ""
                }
            }
            equalsIsPressed = true
        }
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

