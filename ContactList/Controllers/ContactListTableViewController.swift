//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Максим Хабиров on 17.02.2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let persons = persons[indexPath.row]
        
        content.text = persons.fullName
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! ContactDetailsViewController
            detailVC.person = persons[indexPath.row]
        }
    }
}
