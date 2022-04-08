//
//  TabBarControllerViewController.swift
//  Persons List
//
//  Created by mac on 08.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

       setupViewControllers()
    }
//
    private func setupViewControllers(){
        let person = Person.getPersons(DataManager())
        guard let personListVC = viewControllers?.first as? PersonsListViewController else {return print("Не скастил list")}
        guard let personSectionVC = viewControllers?.last as? PersonsSectionViewController else {return print("Не скастил Section")}
        personListVC.person = person
        personSectionVC.person = person
        
    }
   


  

}
