//
//  PersonsSectionViewController.swift
//  Persons List
//
//  Created by mac on 07.04.2022.
//

import UIKit

class PersonsSectionViewController: UITableViewController {

    var persons: [Person]!
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    // Тут немного хардкода 🤷🏻‍♂️
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "sectionPersons", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = "\(persons[indexPath.section].phone)"
            content.image = .init(systemName: "phone")
            cell.contentConfiguration = content
            return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "sectionPersons", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = "\(persons[indexPath.section].email)"
            content.image = .init(systemName: "tray")
            cell.contentConfiguration = content
            return cell
        }
    }
}
