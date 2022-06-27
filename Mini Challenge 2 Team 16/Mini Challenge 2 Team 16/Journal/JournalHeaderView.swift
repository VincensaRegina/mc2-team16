//
//  JournalHeaderView.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 23/06/22.
//

import UIKit

class JournalHeaderView: UITableViewHeaderFooterView {

    let txtDate = UILabel()
    let txtTotal = UILabel()
    
    override init(reuseIdentifier: String?) {
           super.init(reuseIdentifier: reuseIdentifier)
           configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureContents() {
        txtDate.translatesAutoresizingMaskIntoConstraints = false
        txtTotal.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(txtDate)
        contentView.addSubview(txtTotal)
        
        txtDate.font = UIFont.systemFont(ofSize: CGFloat(fontSize.title3.rawValue), weight: .bold)
//        txtTotal.textColor = UIColor.systemOrange
        
        NSLayoutConstraint.activate([
            txtDate.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor, constant: 0),
            txtDate.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor, constant: 0),
            txtTotal.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor, constant: 0),
            txtTotal.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor, constant: 0)
        ])
        
    }

}
