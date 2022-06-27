//
//  GoalsCollectionViewCell.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 24/06/22.
//

import UIKit

class GoalsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "GoalsCollectionViewCell"
    
    let goalsLabel: UILabel = {
        let v = UILabel()
        v.text = "Nike Air Force 1"
        v.textColor = .white
        v.font = .systemFont(ofSize: 16, weight: .semibold)
        return v
    }()
    
    let goalsLabelPrice: UILabel = {
        let v = UILabel()
        v.text = "Rp 3.000.000"
        v.textColor = .white
        v.font = .systemFont(ofSize: 16, weight: .regular)
        return v
    }()
    
    let progressBar: UIProgressView = {
        let progress = UIProgressView()
        progress.progress = 0.5
        progress.progressTintColor = .green
        progress.trackTintColor = .white
        progress.clipsToBounds = true
        return progress
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(goalsLabel)
        contentView.addSubview(goalsLabelPrice)
        contentView.addSubview(progressBar)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        goalsLabel.frame = CGRect(x: contentView.frame.size.width + 50, y: 5, width: contentView.frame.size.width - 10, height: 100)
        goalsLabelPrice.frame = CGRect(x: contentView.frame.size.width + 50, y: 30, width: contentView.frame.size.width - 10, height: 100)
        progressBar.frame = CGRect(x: contentView.frame.size.width + 50, y: 100, width: contentView.frame.size.width, height: 100)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
