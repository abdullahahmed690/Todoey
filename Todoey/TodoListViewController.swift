//
//  ViewController.swift
//  Todoey
//
//  Created by Abdullah ahmed on 03/08/2019.
//  Copyright © 2019 Abdullah ahmed. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Pay Apple", "Study", "Play Footbal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    //Mark - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //Mark - TabelView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
           tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

}

