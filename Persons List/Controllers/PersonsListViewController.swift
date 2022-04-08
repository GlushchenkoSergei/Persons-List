//
//  TableViewController.swift
//  Persons List
//
//  Created by mac on 07.04.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {

    var person: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.first?.fullName ?? "")
    }
   
   
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listPersons", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let personFromArray = person[indexPath.row]
        
        content.text = personFromArray.fullName
        cell.contentConfiguration = content

        return cell
    }
    

    segueDetails
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}

