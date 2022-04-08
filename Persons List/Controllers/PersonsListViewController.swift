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
   
    }
   
   
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listPersons", for: indexPath)



        return cell
    }
    

 
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}

