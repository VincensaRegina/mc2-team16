//
//  JournalViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 20/06/22.
//

import UIKit
import MonthYearPicker

class JournalViewController: UIViewController {
    
    @IBOutlet weak var btnGoal: UIButton!
    @IBOutlet weak var txtCurrBalance: UILabel!
    @IBOutlet weak var txtGoalAmount: UILabel!
    @IBOutlet weak var pbGoal: UIProgressView!
    @IBOutlet weak var tfDate: UITextField!
    @IBOutlet weak var scSection: UISegmentedControl!
    @IBOutlet weak var btnLeft: UIButton!
    @IBOutlet weak var btnRight: UIButton!
    @IBOutlet weak var tbJournal: UITableView!
    @IBOutlet weak var txtPercent: UILabel!
    
    private var selectedDate: Date?
    private var picker = MonthYearPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Table View Setting
        tbJournal.delegate = self
        tbJournal.dataSource = self
        self.registerTableView()
        
        if (scSection.selectedSegmentIndex == 0) {
            createDatePicker()
            print("000")
        } else {
            print("111")
        }
        
        txtCurrBalance.text = String(format: "%ld %@", locale: Locale.current, 300000, "")
        txtGoalAmount.text = String(format: "%ld %@", locale: Locale.current, 3000000, "")
        
    }
    
    @IBAction func valueChanged(_ sender: Any) {
        switch scSection.selectedSegmentIndex
        {
        case 0:
            
            break
        case 1:
            
            break
        default:
            break
        }
    }
    
    private func createDatePicker() {
        picker = MonthYearPickerView(frame: CGRect(origin: CGPoint(x: 0, y: (view.bounds.height - 216) / 2), size: CGSize(width: view.bounds.width, height: 216)))
        picker.maximumDate = Date()
        tfDate.inputView = picker
        tfDate.font = UIFont(name: "NunitoSans-Bold", size: 15)
        tfDate.textAlignment = .center
        
        tfDate.text = formatDate(date: Date())
        tfDate.inputAccessoryView = createDatePickerToolbar()
    }
    
    func createDatePickerToolbar() -> UIToolbar {
        let toolbar = UIToolbar()
        var btnDone = UIBarButtonItem()
        toolbar.sizeToFit()
        
        btnDone = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneDatePressed))
        toolbar.setItems([btnDone], animated: true)
        
        return toolbar
    }
    
    @objc func doneDatePressed() {
        // Done pressed
        tfDate.text = formatDate(date: picker.date)
        self.view.endEditing(true)
    }
    
    @IBAction func btnLeftPressed(_ sender: Any) {
        tfDate.text = formatDate(date: addOrSubtractMonth(month: -1))
    }
    
    @IBAction func btnRightPressed(_ sender: Any) {
        tfDate.text = formatDate(date: addOrSubtractMonth(month: 1))
    }
    
    func addOrSubtractMonth(month: Int) -> Date {
        picker.date = Calendar.current.date(byAdding: .month, value: month, to: picker.date)!
        return picker.date
    }
    
    func formatDate(date: Date) -> String
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter.string(from: date)
    }
    
    private func registerTableView() {
        let textFieldCell = UINib(nibName: sJournal.nibName.rawValue, bundle: nil)
        self.tbJournal.register(textFieldCell, forCellReuseIdentifier: sJournal.customCell.rawValue)
        
        tbJournal.register(JournalHeaderView.self,
                           forHeaderFooterViewReuseIdentifier: sJournal.header.rawValue)
        
        self.tbJournal.sectionHeaderHeight = 40
        
    }
    
}

extension JournalViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        for (index, element) in journalSeed.enumerated() {
//            if ()
//            var filtered =
//        }
        print(section)
        return journalSeed.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: sJournal.customCell.rawValue, for: indexPath) as? JournalTableViewCell {
            cell.txtType.text = journalSeed[indexPath.row].name
            cell.txtDesc.text = journalSeed[indexPath.row].desc
            cell.txtAmount.text = "Rp. \(journalSeed[indexPath.row].amount)"
            cell.txtExp.text = "\(journalSeed[indexPath.row].exp) EXP"
            
            if(journalSeed[indexPath.row].type == sJournal.income.rawValue) {
                cell.txtAmount.textColor = UIColor.systemGreen
            } else {
                cell.txtAmount.textColor = UIColor.systemRed
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dateSeed.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tbJournal.dequeueReusableHeaderFooterView(withIdentifier:
                                                                sJournal.header.rawValue) as! JournalHeaderView
        view.txtDate.text = "\(dateSeed[section].formatted(date: .abbreviated, time: .omitted))"
        view.txtTotal.text = "Rp. 100000"
        view.txtTotal.textColor = UIColor.systemGreen
        
        return view
    }
    
    
}
