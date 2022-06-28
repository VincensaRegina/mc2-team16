//
//  HomeViewController.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 22/06/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.register(FirstRowTableViewCell.self, forCellReuseIdentifier: FirstRowTableViewCell.identifier)
        tv.register(UINib(nibName: "SecondRowTableViewCell", bundle: nil), forCellReuseIdentifier: "CardCell")
        tv.register(UINib(nibName: "ThirdRowTableViewCell", bundle: nil), forCellReuseIdentifier: ThirdRowTableViewCell.identifier)
        tv.register(UINib(nibName: "FourthRowTableViewCell", bundle: nil), forCellReuseIdentifier: FourthRowTableViewCell.identifier)
        return tv
    }()
    
    let navbarImage = UIImage(named: "navbar")
    
    let navIm: UIImageView = {
        let v = UIImageView()
        v.image = UIImage(named: "navbar")
        v.clipsToBounds = true
        return v
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        let appearance = UINavigationBarAppearance()
        appearance.backgroundImage = navbarImage
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FirstRowTableViewCell.identifier) as! FirstRowTableViewCell
        
        if indexPath.row == 0 {
            return cell
        }
        if indexPath.row == 1 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: SecondRowTableViewCell.identifier) as! SecondRowTableViewCell
            return cell2
        }
        if indexPath.row == 2 {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: ThirdRowTableViewCell.identifier) as! ThirdRowTableViewCell
            return cell3
        }
        if indexPath.row == 3 {
            let cell4 = tableView.dequeueReusableCell(withIdentifier: FourthRowTableViewCell.identifier) as! FourthRowTableViewCell
            return cell4
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 100
        }
        if indexPath.row == 1 {
            return 250
        }
        if indexPath.row == 2 {
            return 120
        }
        return 200
    }
}
