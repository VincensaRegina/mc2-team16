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
        let overviewVC = UINavigationController(rootViewController: OverviewViewController())
        let journalVC = UINavigationController(rootViewController: JournalViewController())
        let missionVC = UINavigationController(rootViewController: MissionViewController())
        
        overviewVC.tabBarItem = UITabBarItem(title: "Overview", image: UIImage(systemName: "house"), tag: 0)
        journalVC.tabBarItem = UITabBarItem(title: "Journal", image: UIImage(systemName: "list.bullet"), tag: 1)
        missionVC.tabBarItem = UITabBarItem(title: "Missions", image: UIImage(systemName: "bag"), tag: 2)

        // Do any additional setup after loading the view.
        viewControllers = [overviewVC, journalVC, missionVC]
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
