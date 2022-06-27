//
//  MissionViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 20/06/22.
//

import UIKit

class MissionViewController: UIViewController {

    @IBOutlet weak var cvMission: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cvMission.dataSource = self
//        cvMission.delegate = self
        registerCollectionView()
    }
    
    private func registerCollectionView() {
       
        let missionCell = UINib(nibName: "MissionCollectionViewCell", bundle: nil)
        self.cvMission.register(missionCell, forCellWithReuseIdentifier: "MissionCollectionViewCell")
    }

}

extension MissionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return missionSeed.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cvMission?.dequeueReusableCell(withReuseIdentifier: "MissionCollectionViewCell", for: indexPath) as! MissionCollectionViewCell
        cell.setup(with: missionSeed[indexPath.row])
        return cell
    }
    
}
