//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Nikita Prosvetov on 19.10.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileHeaderView: ProfileHeaderView = {
        let view = ProfileHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let newButton: UIButton = {
        let button = UIButton()
        button.setTitle("New button", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
    
    func setupSubviews() {
        view.addSubview(profileHeaderView)
        view.addSubview(newButton)
        
        profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        profileHeaderView.heightAnchor.constraint(equalToConstant: 220).isActive = true
        
        newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    }
}
