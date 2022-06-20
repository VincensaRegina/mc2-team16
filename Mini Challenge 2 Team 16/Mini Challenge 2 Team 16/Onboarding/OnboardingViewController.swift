//
//  OnboardingViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Zacky Ilahi Azmi on 20/06/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var onboardingCollectionView: UICollectionView!
    
    var slides: [OnboardingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slides = [
            OnboardingSlide(title: "Set Aside Your Pocket Money",
                            description: "Don’t waste all your pocket money! You can save it for bigger things or even your future.",
                            image: #imageLiteral(resourceName: "onboarding1")),
            OnboardingSlide(title: "Hit Your Financial Goals!",
                            description: "You can track your money so you know exactly how much money left that you need with Stashy!",
                            image: #imageLiteral(resourceName: "onboarding2")),
            OnboardingSlide(title: "Finish Missions and Get Reward!",
                            description: "Your parents will set missions for you to achieve. Of course, you will also get additional pocket money!",
                            image: #imageLiteral(resourceName: "onboarding3")),
                ]
    }
    
    
    @IBAction func nextBtnClicked(_ sender: Any) {
    }
    
    
    @IBAction func skipBtnClicked(_ sender: Any) {
    }
    
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
