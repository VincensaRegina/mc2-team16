//
//  OnboardingCollectionViewCell.swift
//  Mini Challenge 2 Team 16
//
//  Created by Zacky Ilahi Azmi on 20/06/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    @IBOutlet weak var slideBackgroundImage: UIImageView!
    
    
    func setup(_ slide: OnboardingSlide){
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
        slideBackgroundImage.image = slide.background
    }
}
