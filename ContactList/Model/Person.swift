//
//  Person.swift
//  ContactList
//
//  Created by Максим Хабиров on 17.02.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactLists() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count) - 1
        
        for index in 0...iterationCount {
            let person = Person(name: names[index], surname: surnames[index], email: emails[index], phoneNumber: phones[index])
            persons.append(person)
        }
        return persons
    }
}

