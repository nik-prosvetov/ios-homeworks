//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Nikita Prosvetov on 29.09.2024.
//

//import UIKit
//
//class ProfileViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .lightGray
//
//        let profileHeaderView = ProfileHeaderView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 200))
//        view.addSubview(profileHeaderView)
//    }
//}

import UIKit

class ProfileViewController: UIViewController {

    let profileHeaderView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeaderView.frame = view.bounds
    }
}
