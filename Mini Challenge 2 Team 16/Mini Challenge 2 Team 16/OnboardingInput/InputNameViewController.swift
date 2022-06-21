//
//  InputNameViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Faizal Hudya Rizfianto on 21/06/22.
//

import UIKit

class InputNameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func NextNamebtnAction(_ sender: Any) {
    
    let namestoryboard = UIStoryboard(name:"Main", bundle: nil)
    let vc = namestoryboard.instantiateViewController(withIdentifier: "InputGoalViewController") as! InputGoalViewController
    self.navigationController!.pushViewController(vc, animated: true)
    }

}
