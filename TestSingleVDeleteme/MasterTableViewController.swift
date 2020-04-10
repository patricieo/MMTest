//
//  MasterTableViewController.swift
//  TestSingleVDeleteme
//
//  Created by Patrick O'Donoghue on 4/10/20.
//  Copyright © 2020 Patrick O'Donoghue. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
        
    var dataArray: [MasterObject] = []
    
    var reuseIdentifier = "MasterObjectItem"
    var cellNibName = "MasterTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: cellNibName, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: reuseIdentifier)
        
        let book1 = Books(name: "Hobbit", description: "Thrilling fantasy book", author: "J.R.R. Tolkien")
        dataArray.append(book1)
        let car1 = Cars(name: "A car that goes", description: "fast car", model: "prius", make: "Toyota")
        dataArray.append(car1)
        let phone1 = Phones(name: "Iphone 6 plus", description: "Pretty old phone", model: "iPhone7,2")
        dataArray.append(phone1)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! MasterTableViewCell

        // Configure the cell...
        let index = indexPath.row
        let masterObject = dataArray[index]
        cell.desc4.isHidden = false
        if let object = masterObject as? Books {
            cell.name1.text = "Book"
            cell.desc1.text = object.name
            cell.desc2.text = object.description
            cell.desc3.text = object.author
            cell.desc4.isHidden = true
        } else if let object = masterObject as? Cars {
            cell.name1.text = "Car"
            cell.desc1.text = object.name
            cell.desc2.text = object.description
            cell.desc3.text = object.make
            cell.desc4.text = object.model
        } else if let object = masterObject as? Phones {
            cell.desc1.text = object.name
            cell.desc2.text = object.description
            cell.desc3.text = object.model
            cell.desc4.isHidden = true
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
