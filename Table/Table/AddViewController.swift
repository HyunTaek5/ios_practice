//
//  AddViewController.swift
//  Table
//
//  Created by 오현택 on 2021/03/10.
//

import UIKit

class AddViewController: UITableViewController {
    @IBOutlet var tfAddItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!)
        itemsImageFile.append("clock.jpg")
        tfAddItem.text = ""
        _ = navigationController?.popViewController(animated: true)
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
