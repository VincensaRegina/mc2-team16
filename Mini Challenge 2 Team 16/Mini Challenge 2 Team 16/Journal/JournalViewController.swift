//
//  JournalViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 20/06/22.
//

import UIKit

class JournalViewController: UIViewController {
    
    @IBOutlet weak var btnGoal: UIButton!
    @IBOutlet weak var txtCurrBalance: UILabel!
    @IBOutlet weak var pbGoal: UIProgressView!
    @IBOutlet weak var txtGoalAmount: UILabel!
    @IBOutlet weak var txtDate: UILabel!
    @IBOutlet weak var scSection: UISegmentedControl!
    @IBOutlet weak var btnLeft: UIButton!
    @IBOutlet weak var btnRight: UIButton!
    @IBOutlet weak var tbJournal: UITableView!
    @IBOutlet weak var txtPercent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Table View Setting
        tbJournal.delegate = self
        tbJournal.dataSource = self
        self.registerTableView()
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
    
    private func registerTableView() {
        // Table View Cells
        let textFieldCell = UINib(nibName: "JournalTableViewCell", bundle: nil)
        self.tbJournal.register(textFieldCell, forCellReuseIdentifier: "JournalCustomCell")
        
        // Table Header
        tbJournal.register(JournalHeaderView.self,
                           forHeaderFooterViewReuseIdentifier: "journalHeader")
        
        //Section Header Height
        self.tbJournal.sectionHeaderHeight = 40
        
    }
    
}

extension JournalViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(journalSeed[section].desc)
//        if (journalSeed[section])
        return journalSeed.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "JournalCustomCell", for: indexPath) as? JournalTableViewCell {
            cell.txtType.text = journalSeed[indexPath.row].name
            cell.txtDesc.text = journalSeed[indexPath.row].desc
            cell.txtAmount.text = "Rp. \(journalSeed[indexPath.row].amount)"
            cell.txtExp.text = "\(journalSeed[indexPath.row].exp) EXP"
            
            if(journalSeed[indexPath.row].type == "income") {
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
                                                            "journalHeader") as! JournalHeaderView
        view.txtDate.text = "\(dateSeed[section].formatted(date: .abbreviated, time: .omitted))"
        view.txtTotal.text = "Rp. 100000"
        view.txtTotal.textColor = UIColor.systemGreen
        
        return view
    }
    
    
}
