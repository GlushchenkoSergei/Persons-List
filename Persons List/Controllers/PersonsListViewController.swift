//
//  TableViewController.swift
//  Persons List
//
//  Created by mac on 07.04.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {

    var persons: [Person]!
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listPersons", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let personFromArray = persons[indexPath.row]
        content.text = personFromArray.fullName
        
        cell.contentConfiguration = content
        return cell
    }
        
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        detailsVC.person = persons[indexPath.row]
    }
    
}

