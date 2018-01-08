//
//  ViewController.swift
//  Todoey
//
//  Created by Wang Shilong on 1/8/18.
//  Copyright © 2018 Wang Shilong. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var itemArray = ["just", "do", "it"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    // MARK: - Tableview Delegate Methods MARK:
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    @IBAction func addItemButton(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        
        let addItemAlert = UIAlertController(title: "Add a to-do", message: "", preferredStyle: .alert)
        
        addItemAlert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
        
        let addItemAction = UIAlertAction(title: "Add", style: .default) { (action) in
            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
        }
        
        addItemAlert.addAction(addItemAction)
        
        present(addItemAlert, animated: true, completion: nil)
        
    }


}

