//
//  CheckListTableViewController.swift
//  MapReminderz
//
//  Created by Daniel Zhu on 7/17/18.
//  Copyright © 2018 MakeSchool. All rights reserved.
//

import Foundation
import UIKit

class CheckListTableViewController: UITableViewController {

    @IBOutlet weak var checklistTitleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return 4
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkListTableViewCell", for: indexPath) as! CheckListTableViewCell
        cell.titleLabel.text = "Location:"
    
        return cell
    }




}
