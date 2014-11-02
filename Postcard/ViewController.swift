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
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendPressed(sender: UIButton) {
        lblName.hidden = false
        lblName.text = txtName.text
        lblName.textColor = UIColor.whiteColor()
        lblName.backgroundColor = UIColor.blueColor()
        
        lblMessage.hidden = false
        lblMessage.text = txtMessage.text
        lblMessage.textColor = UIColor.redColor()
        
        txtName.text = ""
        txtName.resignFirstResponder()
        
        txtMessage.text = ""
        txtMessage.resignFirstResponder()
        
        btnSend.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

