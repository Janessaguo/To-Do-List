//
//  MainTableViewController.swift
//  To-Do List ™
//
//  Created by x on 19/6/18.
//  Copyright © 2018 Beep Boop. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    var incompleteTasks:[Task] = [
        Task(title: "task 1", description: "desc 1", dueDate: "24", category: TaskCategory(name: "cat 1", colorRed: 0, colorGreen: 0, colorBlue: 0)),
        Task(title: "task 2", description: "desc 2", dueDate: "23434324234324234342", category: TaskCategory(name: "cat 2", colorRed: 255, colorGreen: 0, colorBlue: 0))
        ]
    var completeTasks:[Task] = [
        Task(title: "task 3", description: "desc 3", dueDate: "4364574", category: TaskCategory(name: "cat 3", colorRed: 0, colorGreen: 0, colorBlue: 0)),
        Task(title: "task 4", description: "desc 4", dueDate: "6576534", category: TaskCategory(name: "cat 4", colorRed: 100, colorGreen: 0, colorBlue: 255))
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 1 {
            return incompleteTasks.count
        } else if section == 2 {
            return completeTasks.count
        } else {
            return 1
        }
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
