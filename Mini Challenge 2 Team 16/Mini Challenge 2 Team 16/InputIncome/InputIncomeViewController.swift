//
//  InputIncomeViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Zacky Ilahi Azmi on 23/06/22.
//

import UIKit

class InputIncomeViewController: UIViewController {

    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var deleteBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //closeBtn
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold, scale: .large)
               
        let largeBoldDoc = UIImage(systemName: "xmark.circle.fill", withConfiguration: largeConfig)

        closeBtn.setImage(largeBoldDoc, for: .normal)
        
        //deleteBtn
        let BtnDeleteConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold, scale: .large)
        
        let BtnDeleteDoc = UIImage(systemName: "delete.backward.fill", withConfiguration: BtnDeleteConfig)
        
        deleteBtn.setImage(BtnDeleteDoc, for: .normal)
    }
    

}
