//
//  CheckListTableViewController.swift
//  MapReminderz
//
//  Created by Alexander Niehaus on 7/17/18.
//  Copyright © 2018 MakeSchool. All rights reserved.
//

import Foundation
import UIKit

class CheckListTabViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var reminderLabel: UILabel!
    
    @IBOutlet weak var oneTextField: UITextField!
    @IBOutlet weak var twoTextField: UITextField!
    @IBOutlet weak var threeTextField: UITextField!
    @IBOutlet weak var fourTextField: UITextField!
    @IBOutlet weak var fiveTextField: UITextField!
    @IBOutlet weak var sixTextField: UITextField!
    
    var reminder: Reminder?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let reminder = reminder {
            oneTextField.text = reminder.textField_1
            twoTextField.text = reminder.textField_2
            threeTextField.text = reminder.textField_3
            fourTextField.text = reminder.textField_4
            fiveTextField.text = reminder.textField_5
            sixTextField.text = reminder.textField_6
            
        } else {
            oneTextField.text = ""
            twoTextField.text = ""
            threeTextField.text = ""
            fourTextField.text = ""
            fiveTextField.text = ""
            sixTextField.text = ""
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1
      //  guard let identifier = segue.identifier,
          //  let destination = segue.destination as? CheckListTableViewController
         //   else { return }
        
        switch identifier {
        // 2
        case "save" where reminder != nil:
            reminder?.textField_1 = oneTextField.text ?? ""
            reminder?.textField_2 = twoTextField.text ?? ""
            reminder?.textField_3 = threeTextField.text ?? ""
            reminder?.textField_4 = fourTextField.text ?? ""
            reminder?.textField_5 = fiveTextField.text ?? ""
            reminder?.textField_6 = sixTextField.text ?? ""
        
        //    destination.tableView.reloadData()
            
        // 3
        case "save" where reminder == nil:
            let reminder = Reminder()
            reminder.textField_1 = oneTextField.text ?? ""
            reminder.textField_2 = twoTextField.text ?? ""
            reminder.textField_3 = threeTextField.text ?? ""
            reminder.textField_4 = fourTextField.text ?? ""
            reminder.textField_5 = fiveTextField.text ?? ""
            reminder.textField_6 = sixTextField.text ?? ""

            
            
            
        case "cancel":
            print("cancel bar button item tapped")
            
        default:
            print("unexpected segue identifier")
        }
    }
    
}

