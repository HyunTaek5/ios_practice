//
//  DetailViewController.swift
//  Table
//
//  Created by 오현택 on 2021/03/10.
//

import UIKit

class DetailViewController: UITableViewController {
    
    var receiveItem = ""
    
    @IBOutlet var lblItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblItem.text = receiveItem
    }
    
    func receiveItem(_ item: String) {
        receiveItem = item
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
