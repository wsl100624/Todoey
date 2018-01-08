//
//  ViewController.swift
//  Todoey
//
//  Created by Wang Shilong on 1/8/18.
//  Copyright © 2018 Wang Shilong. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    @IBOutlet weak var addItemButton: UIBarButtonItem!
    
    let itemArray = ["just", "do", "it"]
    
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
    
    func addItemButtonPressed() {
        
        
        
    }


}

