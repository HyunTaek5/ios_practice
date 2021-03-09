//
//  EditViewController.swift
//  Navigation
//
//  Created by 오현택 on 2021/03/09.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
}

class EditViewController: UIViewController {
    var textWayValue : String = ""
    var textMessage : String = ""
    var delegate : EditDelegate?
    
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var txMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWay.text = textWayValue
        txMessage.text = textMessage
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txMessage.text!)
        }
        _ = navigationController?.popViewController(animated: true)
    }
}
