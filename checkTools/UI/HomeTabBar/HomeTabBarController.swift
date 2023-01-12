//
//  HomeTabBarController.swift
//  checkTools
//
//  Created by Markel Juaristi on 10/1/23.
//

import UIKit

class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupTabs()
    }
    private func setupTabs() {
        let tableViewController = TableViewController()
        let tabImage = UIImage(systemName: "text.justify")
        tableViewController.tabBarItem = UITabBarItem(title: "TableView", image: tabImage, tag: 0)
        
        let collectionViewController = CollectionViewController()
        let tabImg = UIImage(systemName: "square.grid.3x3.topleft.filled")
        tableViewController.tabBarItem = UITabBarItem(title: "CollectionView", image: tabImage, tag: 0)
        
        
        viewControllers = [tableViewController, collectionViewController]
    }
    private func setupLayout() {
        tabBar.backgroundColor = .systemBackground
    }
    

}
