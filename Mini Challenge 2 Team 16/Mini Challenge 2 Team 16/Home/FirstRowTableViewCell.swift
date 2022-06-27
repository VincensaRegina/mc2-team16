//
//  FirstRowTableViewCell.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 22/06/22.
//

import UIKit

class FirstRowTableViewCell: UITableViewCell {

    static let identifier = "CobaTableViewCell"
    
    let label: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "CeraRoundPro-Bold", size: 36)
        label.text = "Aldi"
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.text = "Level 2"
        label.font = UIFont(name: "CeraRoundPro-Bold", size: 16)
        return label
    }()
    
    
    let progressBar: UIProgressView = {
        let progress = UIProgressView()
        progress.progress = 0.5
        progress.progressTintColor = .green
        progress.tintColor = .white
//        progress.layer.shadowOffset = 
        progress.clipsToBounds = true
        return progress
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(label2)
        contentView.addSubview(progressBar)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let x =  label.frame.size.width
        label.frame = CGRect(x: 5, y: 5, width: 100, height: contentView.frame.size.height-10)
        progressBar.frame = CGRect(x: 5, y: 80, width: contentView.frame.size.width, height: contentView.frame.size.height-10)
        label2.frame = CGRect(x: contentView.frame.size.width-60, y: 10, width: contentView.frame.size.width - 10 , height: contentView.frame.size.height-10)
        
    }
    
}
