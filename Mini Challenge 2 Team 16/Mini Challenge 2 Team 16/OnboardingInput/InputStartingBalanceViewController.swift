//
//  InputStartingBalanceViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Faizal Hudya Rizfianto on 21/06/22.
//

import UIKit

class InputStartingBalanceViewController: UIViewController {

    @IBOutlet var balancefield: UITextField!
    @IBOutlet var balancenextbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Shadow
        balancenextbutton.layer.shadowColor = UIColor.black.cgColor
        balancenextbutton.layer.shadowRadius = 4
        balancenextbutton.layer.shadowOpacity = 0.25
        balancenextbutton.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        balancefield.returnKeyType = .done
        balancefield.layer.cornerRadius = 10
        balancefield.layer.masksToBounds = true
        balancefield.keyboardType = .numberPad
        balancenextbutton.layer.cornerRadius = 10
        balancenextbutton.layer.masksToBounds = true
        
        let label = UILabel()
        label.font = UIFont(name: "CeraRoundPro-Bold", size: 32)
        
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "CeraRoundPro-Bold", size: 20)

    }
    
    @IBAction func NextGoalbtnAction(_ sender: Any) {
        let namestoryboard = UIStoryboard(name:"OnboardingInputScreen", bundle: nil)
        let vc = namestoryboard.instantiateViewController(withIdentifier: "InputStartingBalanceViewController") as! InputStartingBalanceViewController
        self.navigationController!.pushViewController(vc, animated: true)
    }
}

extension InputStartingBalanceViewController: UITextFieldDelegate {
        
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        let balance = textField.text
        print("\(balance)")
        
        return true
        }
}
