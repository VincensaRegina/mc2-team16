//
//  InputNameViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Faizal Hudya Rizfianto on 21/06/22.
//

import UIKit

class InputNameViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    

    @IBOutlet var namefield: UITextField!
    @IBOutlet var namenextbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Shadow
        namenextbutton.layer.shadowColor = UIColor.black.cgColor
        namenextbutton.layer.shadowRadius = 4
        namenextbutton.layer.shadowOpacity = 0.25
        namenextbutton.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        namefield.returnKeyType = .done
        namefield.layer.cornerRadius = 10
        namefield.layer.masksToBounds = true
        namenextbutton.layer.cornerRadius = 10
        namenextbutton.layer.masksToBounds = true
        
//        let label = UILabel()
//        label.font = UIFont(name: "NunitoSans-LightItalic", size: 32)
//        
//        let button = UIButton()
//        button.titleLabel?.font = UIFont(name: "NunitoSans-LightItalic", size: 20)
    }
    
//    func setCustomBackColor() {
//        backIndicatorImage
//        backBarButtonItem
//    }
    
    @IBAction func NextNamebtnAction(_ sender: Any) {
    
    let namestoryboard = UIStoryboard(name:"OnboardingInputScreen", bundle: nil)
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
