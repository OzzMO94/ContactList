//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Максим Хабиров on 17.02.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let person = Person.getContactLists()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: person)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        guard let contactListVC = viewControllers?.first as? ContactListTableViewController else {return}
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else {return}
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
