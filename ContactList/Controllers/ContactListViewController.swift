//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Максим Евграфов on 07.06.2023.
//

import UIKit

class ContactListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataStore.names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let contact = Contact.getContact()
        
        content.text = "\(contact.name) \(contact.surname)"
        
        cell.contentConfiguration = content

        return cell
    }
}
