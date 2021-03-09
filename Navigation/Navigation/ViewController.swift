//
//  ViewController.swift
//  Navigation
//
//  Created by 오현택 on 2021/03/08.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
    
    
    @IBOutlet var txtMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            editViewController.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "segue : use Bar button"
        }
        editViewController.textMessage = txtMessage.text!
        editViewController.delegate = self
    }
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txtMessage.text = message
    }
    
}

