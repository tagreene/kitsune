//
//  TabBarController.swift
//  kitsune
//
//  Created by Trent Greene on 5/15/18.
//  Copyright © 2018 greene. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    // Mark: - View Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barStyle = .black
        
        let results = ResultsViewController()
        results.title = "Results"
        
        let favorites = FavoritesViewController()
        favorites.title = "Favs"
        
        let settings = SettingsViewController()
        settings.title = "Settings"
        
        viewControllers = [results, favorites, settings]
    }
}
