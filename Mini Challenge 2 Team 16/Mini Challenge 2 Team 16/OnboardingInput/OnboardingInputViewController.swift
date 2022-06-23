//
//  OnboardingInputViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Faizal Hudya Rizfianto on 20/06/22.
//

import UIKit

class OnboardingInputViewController: UIViewController {
    
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.font = UIFont(name: "CeraRoundPro-Bold", size: 32)
        
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "CeraRoundPro-Bold", size: 20)

     
    }
    
    @IBAction func GetstartedAction(_ sender: Any) {
        let namestoryboard = UIStoryboard(name:"Main", bundle: nil)
        let vc = namestoryboard.instantiateViewController(withIdentifier: "InputNameViewController") as! InputNameViewController
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
}
