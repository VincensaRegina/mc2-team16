//
//  MissionCollectionViewCell.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 24/06/22.
//

import UIKit

class MissionCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtReward: UILabel!
    
    func setup(with mission: MissionWinnow) {
        imgIcon.image = mission.icon
        txtName.text = mission.name
        txtReward.text = String(format: "Rp %.0f %@", locale: Locale.current, mission.reward, "")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
