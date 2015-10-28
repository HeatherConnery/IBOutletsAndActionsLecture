//
//  ViewController.swift
//  IBOutletsAndActionsLecture
//
//  Created by Heather Connery on 2015-10-28.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // data model for list
    var myTaskList = [String]()
    

    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func myButton(sender: AnyObject) {
        self.myTaskList.append(self.myTextField.text!)
        self.myTableView.reloadData()
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    // delegate methods for tableView
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myTaskList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        // in closures we will need to use the self to explicitly reference that it is owned by the view controller, here is is optional:
        cell.textLabel?.text = self.myTaskList[indexPath.row]
        return cell
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

