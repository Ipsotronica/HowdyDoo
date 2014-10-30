//
//  ViewController.swift
//  Postcard
//
//  Created by Ipsotronics on 23/10/2014.
//  Copyright (c) 2014 Ipsotronics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var btnSend: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendPressed(sender: UIButton) {
        lblMessage.hidden = false;
        lblMessage.text = txtName.text
        lblMessage.textColor = UIColor.redColor()
        
        txtName.text = ""
        txtName.resignFirstResponder()
        
        btnSend.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

