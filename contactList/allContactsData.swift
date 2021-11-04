//
//  allContactsData.swift
//  contactList
//
//  Created by Vlad Zavada on 04.11.2021.
//

import UIKit

class allContactsData: UITableViewController {
    
    var contactList = Contacts.getContacts()
    var fn = "fdf"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let currentContact = contactList[indexPath.section]
        fn = contactList[indexPath.section].fullname
        if indexPath.row == 0 {
            cell.textLabel?.text = currentContact.email}
        else {
            cell.textLabel?.text = currentContact.phoneNumber
        }

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return contactList[section].fullname

        }

}
