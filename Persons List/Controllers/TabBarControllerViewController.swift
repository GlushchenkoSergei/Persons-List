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
        setupPersonsListVC()
        setupPersonsSectionVC()
    }
    private let persons = (Person.getPersons(DataManager())).shuffled()
}


extension TabBarViewController {
    private func setupPersonsListVC(){
        guard let navigation = viewControllers?.first as? UINavigationController else { return }
        guard let personListVC = navigation.topViewController as? PersonsListViewController else { return }
        personListVC.persons = persons
    }
    private func setupPersonsSectionVC(){
        guard let navigation = viewControllers?.last as? UINavigationController else { return }
        guard let personSectionVC = navigation.topViewController as? PersonsSectionViewController else {return}
        personSectionVC.persons = persons
    }
    
}

