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
    
    var result: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        clearAll()
        
        //DatePicker
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels
        
        dateInput.inputView = datePicker
        dateInput.text = formatDate(date: Date()) //todays date
        
        //closeBtn
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold, scale: .large)
               
        let largeBoldDoc = UIImage(systemName: "xmark.circle.fill", withConfiguration: largeConfig)

        closeBtn.setImage(largeBoldDoc, for: .normal)
        
        //deleteBtn
        let BtnDeleteConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold, scale: .large)
        
        let BtnDeleteDoc = UIImage(systemName: "delete.backward.fill", withConfiguration: BtnDeleteConfig)
        
        deleteCalc.setImage(BtnDeleteDoc, for: .normal)
    }
    
    //setting datepicker
    @objc func dateChange(datePicker: UIDatePicker) {
        dateInput.text = formatDate(date: datePicker.date)
    }
    
    func formatDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, dd MMMM yyyy"
        return formatter.string(from: date)
    }

    
    func clearAll() {
        result = ""
        moneyLbl.text = "Rp 0"
    }
    
    @IBAction func clearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func deleteTap(_ sender: Any) {
        if (!result.isEmpty){
            result.removeLast()
            moneyLbl.text = String(format: "Rp %ld %@", locale: Locale.current, Int(result) ?? 0, "")
        }
    }
    
    func addToWorkings(value: String) {
        result = result + value
        moneyLbl.text = String(format: "Rp %ld %@", locale: Locale.current, Int(result) ?? 0, "")
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
