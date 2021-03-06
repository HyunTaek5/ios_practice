//
//  ViewController.swift
//  Practice1
//
//  Created by 오현택 on 2021/02/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var Hello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        Hello.text = "Hello," + txtName.text!
    }
}

