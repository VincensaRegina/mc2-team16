//
//  FourthRowTableViewCell.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 24/06/22.
//

import UIKit

class FourthRowTableViewCell: UITableViewCell {

    static let identifier = "FourthCell"
    
    @IBOutlet weak var goalsCollectionView: UICollectionView!
    let backgroundImage: UIImageView = {
        let v = UIImageView()
        v.image = UIImage(named: "goals")
        return v
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        goalsCollectionView.backgroundView = backgroundImage
        goalsCollectionView.register(GoalsCollectionViewCell.self, forCellWithReuseIdentifier: GoalsCollectionViewCell.identifier)
        goalsCollectionView.dataSource = self
        goalsCollectionView.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}

extension FourthRowTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GoalsCollectionViewCell.identifier, for: indexPath) as! GoalsCollectionViewCell
        return cell
    }
    
    
}
