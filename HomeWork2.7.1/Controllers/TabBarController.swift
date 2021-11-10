//
//  TabBarController.swift
//  HomeWork2.7.1
//
//  Created by Artur Anissimov on 10.11.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let persons = Person.getPersons()

        transferDataToVC(data: persons)
    }
    
    private func transferDataToVC(data: [Person]) {
        guard let viewControllers = self.viewControllers else { return }
        
        viewControllers.forEach {
            if let personsListVC = $0 as? PersonsListViewController {
                personsListVC.persons = data
            } else if let secondPersonsListVC = $0 as? SecondPersonsListViewController {
                secondPersonsListVC.persons = data
            }
        }
    }
}
