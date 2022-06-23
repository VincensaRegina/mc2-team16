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
        //Shadow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.25
        button.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        
        
        //CornerButton
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        
        let label = UILabel()
        label.font = UIFont(name: "CeraRoundPro-Bold", size: 32)
        
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "CeraRoundPro-Bold", size: 20)

     
    }
    
    @IBAction func GetstartedAction(_ sender: Any) {
        let namestoryboard = UIStoryboard(name:"OnboardingInputScreen", bundle: nil)
        let vc = namestoryboard.instantiateViewController(withIdentifier: "InputNameViewController") as! InputNameViewController
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
}
