//
//  OnboardingInputViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Faizal Hudya Rizfianto on 20/06/22.
//

import UIKit

class OnboardingInputViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func GetstartedAction(_ sender: Any) {
        let namestoryboard = UIStoryboard(name:"Main", bundle: nil)
        let vc = namestoryboard.instantiateViewController(withIdentifier: "InputNameViewController") as! InputNameViewController
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
}
