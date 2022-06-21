//
//  InputGoalViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Faizal Hudya Rizfianto on 21/06/22.
//

import UIKit

class InputGoalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func NextGoalbtnAction(_ sender: Any) {
        let namestoryboard = UIStoryboard(name:"Main", bundle: nil)
        let vc = namestoryboard.instantiateViewController(withIdentifier: "InputStartingBalanceViewController") as! InputStartingBalanceViewController
        self.navigationController!.pushViewController(vc, animated: true)
    }
    

}
