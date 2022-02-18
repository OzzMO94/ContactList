//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Максим Хабиров on 18.02.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        
    }
}
