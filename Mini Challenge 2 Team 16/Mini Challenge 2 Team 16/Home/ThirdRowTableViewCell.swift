//
//  ThirdRowTableViewCell.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 24/06/22.
//

import UIKit

class ThirdRowTableViewCell: UITableViewCell{
    
    static let identifier = "ThirdCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func incomeButtonPressed(_ sender: Any) {
        let inputStoryboard = UIStoryboard(name: "InputIncome", bundle: nil)
        let inputIncomeVC = inputStoryboard.instantiateViewController(withIdentifier: "InputExpenseViewController")
        let homeStoryboard = UIStoryboard(name: "InputIncome", bundle: nil)
        let homeVC = homeStoryboard.instantiateViewController(withIdentifier: "InputExpenseViewController")
        let homeViewController = HomeViewController()
        homeViewController.present(inputIncomeVC, animated: true, completion: nil)
        
    }
    
    @IBAction func expensesButtonPressed(_ sender: Any) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
