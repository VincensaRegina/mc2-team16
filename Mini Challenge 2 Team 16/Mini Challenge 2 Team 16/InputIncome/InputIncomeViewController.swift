//
//  InputIncomeViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Zacky Ilahi Azmi on 23/06/22.
//

import UIKit

class InputIncomeViewController: UIViewController {

    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var saveBtn: UIButton!
    
    @IBOutlet weak var moneyLbl: UILabel!
    @IBOutlet weak var descInput: UITextField!
    @IBOutlet weak var dateInput: UITextField!
    
    
    @IBOutlet weak var deleteCalc: UIButton!
    
    var workings: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        clearAll()
        
        //closeBtn
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold, scale: .large)
               
        let largeBoldDoc = UIImage(systemName: "xmark.circle.fill", withConfiguration: largeConfig)

        closeBtn.setImage(largeBoldDoc, for: .normal)
        
        //deleteBtn
        let BtnDeleteConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold, scale: .large)
        
        let BtnDeleteDoc = UIImage(systemName: "delete.backward.fill", withConfiguration: BtnDeleteConfig)
        
        deleteCalc.setImage(BtnDeleteDoc, for: .normal)
    }

    
    func clearAll() {
        workings = ""
        moneyLbl.text = "Rp 0"
    }
    
    @IBAction func clearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func deleteTap(_ sender: Any) {
        if (!workings.isEmpty){
            workings.removeLast()
            moneyLbl.text = "Rp \(workings)"
        }
    }
    
    func addToWorkings(value: String) {
        workings = workings + value
        moneyLbl.text = "Rp \(workings)"
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToWorkings(value: "1")
    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToWorkings(value: "2")
    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToWorkings(value: "3")
    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToWorkings(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToWorkings(value: "5")
    }
    
    @IBAction func sixTap(_ sender: Any) {
        addToWorkings(value: "6")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToWorkings(value: "7")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        addToWorkings(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToWorkings(value: "9")
    }
}
