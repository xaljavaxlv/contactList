//
//  File.swift
//  contactList
//
//  Created by Vlad Zavada on 03.11.2021.
//

import Foundation


struct Contacts {
    
    let firstName: String
    let lastName: String
    var fullname: String {
        "\(firstName) \(lastName)"
    }
    let phoneNumber: String
    let email: String
    
    

    
    static func getContacts () -> [Contacts] {
        return [
            Contacts(firstName: "Alex", lastName: "Malex", phoneNumber: "65665", email: "alex@malex.com"),
            Contacts(firstName: "petr", lastName: "valikov", phoneNumber: "8888", email: "petya@valikov.com"),
            Contacts(firstName: "vasia", lastName: "masia", phoneNumber: "999", email: "vasia@malex.com"),
            Contacts(firstName: "kirya", lastName: "dirya", phoneNumber: "000", email: "kirya@valikov.com")
        ]
    }
}
