//
//  ViewController.swift
//  Postcard
//
//  Created by Sebastian Burek on 16.09.2014.
//  Copyright (c) 2014 Sebastian Burek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var messageLabel: UILabel!
    
    @IBOutlet var nameLabel: UILabel!
                            
    @IBOutlet var enterNameTextfield: UITextField!
    
    @IBOutlet var enterMessageTextfield: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code here will evaluate when we press the button
        // Adding a comment to test commits
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterMessageTextfield.text
        nameLabel.text = enterNameTextfield.text
        enterMessageTextfield.text = ""
        enterNameTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()
        enterNameTextfield.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
            
    }

}

