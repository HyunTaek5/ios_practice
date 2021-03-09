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
