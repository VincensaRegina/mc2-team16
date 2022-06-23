//
//  InputNameViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Faizal Hudya Rizfianto on 21/06/22.
//

import UIKit

class InputNameViewController: UIViewController {

    @IBOutlet var namefield: UITextField!
    @IBOutlet var namenextbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namefield.returnKeyType = .done
        
        let label = UILabel()
        label.font = UIFont(name: "CeraRoundPro-Bold", size: 32)
        
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "CeraRoundPro-Bold", size: 20)
    }
    
    @IBAction func NextNamebtnAction(_ sender: Any) {
    
    let namestoryboard = UIStoryboard(name:"Main", bundle: nil)
    let vc = namestoryboard.instantiateViewController(withIdentifier: "InputGoalViewController") as! InputGoalViewController
    self.navigationController!.pushViewController(vc, animated: true)
    }
}

extension InputNameViewController: UITextFieldDelegate {
        
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        let nametext = textField.text
        print("\(nametext)")
        
        return true
        }
}
