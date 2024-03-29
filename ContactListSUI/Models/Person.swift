//
//  Person.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    let avatar: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let avatars = DataStore.shared.avatars.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count,
            avatars.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index],
                avatar: avatars[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Icon {
    case phone, mail
    
    var pictureName: String {
        switch self {
        case .mail:
            return "tray"
        case .phone:
            return "phone"
        }
    }
}
