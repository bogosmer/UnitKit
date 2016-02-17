//
//  DetailViewController.swift
//  UnitKit Example
//
//  Created by Bo Gosmer on 15/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    
    var options: [String]? = nil
    var completion: (String -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options?.count ?? 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        let somethingsWrong = "Wrong!"
        if let unwrappedOptions = options {
            cell.textLabel?.text = indexPath.row < unwrappedOptions.count ? unwrappedOptions[indexPath.row] : somethingsWrong
        } else {
            cell.textLabel?.text = somethingsWrong
        }

        return cell
    }
    
    // MARK: -  Delegate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        navigationController?.popViewControllerAnimated(true)
        guard let unwrappedCompletion = completion, unwrappedOptions = options else {
            return
        }
        
        if indexPath.row < unwrappedOptions.count {
            unwrappedCompletion(unwrappedOptions[indexPath.row])
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("going back")
    }

}
