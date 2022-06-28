//
//  OnboardingViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Zacky Ilahi Azmi on 20/06/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var onboardingCollectionView: UICollectionView!
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextBtn: UIButton!
    
    var slides: [OnboardingSlide] = [
        OnboardingSlide(title: "Set Aside Your Pocket Money",
                        description: "Don’t waste all your pocket money! You can save it for bigger things or even your future.",
                        image: #imageLiteral(resourceName: "onboarding1"),
                        background: #imageLiteral(resourceName: "saving"),
                       textColor: "Purple"),
        OnboardingSlide(title: "Hit Your Financial Goals!",
                        description: "You can track your money so you know exactly how much money left that you need with Stashy!",
                        image: #imageLiteral(resourceName: "onboarding2"),
                        background: #imageLiteral(resourceName: "Goal"),
                       textColor: "Blue"),
        OnboardingSlide(title: "Finish Missions and Get Reward!",
                        description: "Your parents will set missions for you to achieve. Of course, you will also get additional pocket money!",
                        image: #imageLiteral(resourceName: "onboarding3"),
                        background: #imageLiteral(resourceName: "mission"),
                       textColor: "Green")
            ]
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            //slide 2
            if currentPage == slides.count - 2 {
                nextBtn.setTitleColor(UIColor(named: "Blue"), for: .normal)
                skipBtn.setTitleColor(UIColor(named: "Blue"), for: .normal)
                pageControl.currentPageIndicatorTintColor = UIColor(named: "Blue")
            }
            //slide 3
            else if currentPage == slides.count - 1 {
                nextBtn.setTitleColor(UIColor(named: "Green"), for: .normal)
                skipBtn.setTitleColor(UIColor(named: "Green"), for: .normal)
                pageControl.currentPageIndicatorTintColor = UIColor(named: "Green")
            }
            //slide1
            else {
                nextBtn.setTitleColor(UIColor(named: "Purple"), for: .normal)
                skipBtn.setTitleColor(UIColor(named: "Purple"), for: .normal)
                pageControl.currentPageIndicatorTintColor = UIColor(named: "Purple")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnClicked(_ sender: Any) {
        if currentPage == slides.count - 1 {
            performSegue(withIdentifier: "onboardingSegue", sender: self)
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            onboardingCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
    
    @IBAction func skipBtnClicked(_ sender: Any) {
        performSegue(withIdentifier: "onboardingSegue", sender: self)
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
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
    }
}
