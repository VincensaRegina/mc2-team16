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
        balancefield.returnKeyType = .done
        balancefield.keyboardType = .numberPad
        
        let label = UILabel()
        label.font = UIFont(name: "CeraRoundPro-Bold", size: 32)
        
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "CeraRoundPro-Bold", size: 20)

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
