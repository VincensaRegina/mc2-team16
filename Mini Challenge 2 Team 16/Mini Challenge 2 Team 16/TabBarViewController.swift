//
//  TabBarViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 20/06/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        let overviewVC = UINavigationController(rootViewController: OverviewViewController())
        //        let journalVC = UINavigationController(rootViewController: JournalViewController())
        //        let missionVC = UINavigationController(rootViewController: MissionViewController())
        //
        //        overviewVC.tabBarItem = UITabBarItem(title: "Overview", image: UIImage(systemName: "house"), tag: 0)
        //        journalVC.tabBarItem = UITabBarItem(title: "Journal", image: UIImage(systemName: "list.bullet"), tag: 1)
        //        missionVC.tabBarItem = UITabBarItem(title: "Missions", image: UIImage(systemName: "bag"), tag: 2)
        //
        //        // Do any additional setup after loading the view.
        //        viewControllers = [overviewVC, journalVC, missionVC]
        
        //        view.backgroundColor = .systemBackground
        //        UITabBar.appearance().barTintColor = .systemBackground
        //        tabBar.tintColor = .label
        //        setupVCs()
        
        let journalStoryboard = UIStoryboard(name: "Journal", bundle: nil)
        let overviewVC = journalStoryboard.instantiateViewController(withIdentifier: "JournalViewController")
        overviewVC.tabBarItem.image =  UIImage(systemName: "house")
        
        let journalVC = journalStoryboard.instantiateViewController(withIdentifier: "JournalViewController")
        journalVC.tabBarItem.image = UIImage(systemName: "list.bullet")
        
        let missionVC = journalStoryboard.instantiateViewController(withIdentifier: "JournalViewController")
        missionVC.tabBarItem.image = UIImage(systemName: "bag")
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = UIColor(red: 248.0/255, green: 148.0/255, blue: 76.0/255, alpha: 1.0)
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 8
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.3
        
        viewControllers = [overviewVC, journalVC, missionVC]
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: OverviewViewController(), title: NSLocalizedString("Overview", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: JournalViewController(), title: NSLocalizedString("Journal", comment: ""), image: UIImage(systemName: "list.bullet")!),
            createNavController(for: MissionViewController(), title: NSLocalizedString("Mission", comment: ""), image: UIImage(systemName: "bag")!)
        ]
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
