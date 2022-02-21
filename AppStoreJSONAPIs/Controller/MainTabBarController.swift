//
//  MainTabBarController.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 11/02/2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    viewControllers = [
        CreateNavController(viewController: AppsPageController(), title: "Apps", imageName: "Apps"),
        CreateNavController(viewController: AppSearchController(), title: "Search", imageName: "Search"),
        CreateNavController(viewController: UIViewController(), title: "Today", imageName: "Today"),
        
       
        ]
    }
    
    fileprivate func CreateNavController(viewController: UIViewController, title: String, imageName: String) -> UINavigationController {
        
        let navController = UINavigationController(rootViewController: viewController)
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        
        navController.tabBarItem.title = title
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.image = UIImage(named: imageName)
        
        return navController
    }
}
