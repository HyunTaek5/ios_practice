//
//  TableViewController.swift
//  Table
//
//  Created by 오현택 on 2021/03/09.
//

import UIKit

var items = ["buy Book", "Pm with People", "Study"]
var itemImageFile = ["cart.png", "pencil.jpg", "clock.jpg"]

class TableViewController: UITableViewController {

    @IBOutlet var tvListView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
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
