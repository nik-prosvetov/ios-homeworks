//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Nikita Prosvetov.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileHeaderView: ProfileHeaderView = {
        let view = ProfileHeaderView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
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
        view.backgroundColor = .white
        setupSubviews()
    }
    
    func setupSubviews() {
        view.addSubview(profileHeaderView)
        view.addSubview(tableView)
        view.addSubview(newButton)
        
        profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        profileHeaderView.heightAnchor.constraint(equalToConstant: 240).isActive = true
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: profileHeaderView.bottomAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: newButton.topAnchor, constant: 0).isActive = true
        
        newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: "PhotosTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ProfileViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotosTableViewCell", for: indexPath) as! PhotosTableViewCell
        
        let photos = [
            UIImage(named: "Car1")!,
            UIImage(named: "Car2")!,
            UIImage(named: "Car3")!,
            UIImage(named: "Car4")!
        ]
        cell.configure(with: photos)
        cell.selectionStyle = .default
        cell.accessoryType = .none
        
        return cell
    }
}

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let photosVC = PhotosViewController()
        navigationController?.pushViewController(photosVC, animated: true)
    }
}
