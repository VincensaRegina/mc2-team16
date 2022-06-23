//
//  InputGoalViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Faizal Hudya Rizfianto on 21/06/22.
//

import UIKit

class InputGoalViewController: UIViewController {

    @IBOutlet var goalfield: UITextField!
    @IBOutlet var goalnextbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goalfield.returnKeyType = .done
        
        let label = UILabel()
        label.font = UIFont(name: "CeraRoundPro-Bold", size: 32)
        
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "CeraRoundPro-Bold", size: 20)

    }
    

    @IBAction func NextGoalbtnAction(_ sender: Any) {
        let namestoryboard = UIStoryboard(name:"Main", bundle: nil)
        let vc = namestoryboard.instantiateViewController(withIdentifier: "InputStartingBalanceViewController") as! InputStartingBalanceViewController
        self.navigationController!.pushViewController(vc, animated: true)
    }
}

extension InputGoalViewController: UITextFieldDelegate {
        
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        let goaltext = textField.text
        print("\(goaltext)")
        
        return true
        }
}
