//
//  ContactListTable.swift
//  contactList
//
//  Created by Vlad Zavada on 03.11.2021.
//

import UIKit

class ContactListTable: UITableViewController  {
    var contactList = Contacts.getContacts()
    var nameName: String?


    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "contactSeg" else {return}
        let contactsVC = segue.destination as! ViewController
        guard let indexRow = tableView.indexPathForSelectedRow else {return}
        let currentContact = contactList[indexRow.row]
        contactsVC.fullNameTittle.title = currentContact.fullname
        contactsVC.label1 = currentContact.email
        contactsVC.label2 = currentContact.phoneNumber
        
        
    }
}


extension ContactListTable {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let currentContact = contactList[indexPath.row]
        cell.textLabel?.text = currentContact.fullname
        nameName = currentContact.fullname
        // Configure the cell...

        return cell
    }
    
    
    

    
    
}
