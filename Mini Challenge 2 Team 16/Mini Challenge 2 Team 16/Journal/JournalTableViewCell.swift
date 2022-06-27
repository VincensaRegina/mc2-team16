//
//  JournalTableViewCell.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 23/06/22.
//

import UIKit

class JournalTableViewCell: UITableViewCell {

    @IBOutlet weak var imgType: UIImageView!
    @IBOutlet weak var txtType: UILabel!
    @IBOutlet weak var txtDesc: UILabel!
    @IBOutlet weak var txtAmount: UILabel!
    @IBOutlet weak var txtExp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
