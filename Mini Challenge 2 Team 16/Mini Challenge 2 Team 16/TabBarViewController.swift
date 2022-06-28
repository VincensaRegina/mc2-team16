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
        
        modalPresentationStyle = .fullScreen
        modalTransitionStyle = .crossDissolve
        
        let journalStoryboard = UIStoryboard(name: "Journal", bundle: nil)
        let overviewVC = journalStoryboard.instantiateViewController(withIdentifier: "JournalViewController")
        overviewVC.tabBarItem.image =  UIImage(systemName: "house")
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarItem.title = "Home"
        
        
        let journalVC = journalStoryboard.instantiateViewController(withIdentifier: "JournalViewController")
        journalVC.tabBarItem.image = UIImage(systemName: "list.bullet")
        journalVC.tabBarItem.title = "Journal"
        
        let missionStoryboard = UIStoryboard(name: "Mission", bundle: nil)
        let missionVC = missionStoryboard.instantiateViewController(withIdentifier: "MissionViewController")
        missionVC.tabBarItem.image = UIImage(systemName: "bag")
        missionVC.tabBarItem.title = "Missions"
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = UIColor(red: 248.0/255, green: 148.0/255, blue: 76.0/255, alpha: 1.0)
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 8
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.3
        
        viewControllers = [homeVC, journalVC, missionVC]
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
