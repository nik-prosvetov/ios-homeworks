//
//  FeedViewController.swift
//  Navigation
//
//  Created by Nikita Prosvetov on 28.09.2024.
//

import UIKit

class FeedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let post = Post(title: "Мой первый пост")
        
        let button = UIButton(type: .system)
        button.setTitle("Показать пост", for: .normal)
        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
    }
    
    @objc func showPost() {
        let postViewController = PostViewController(post: post)
        navigationController?.pushViewController(postViewController, animated: true)
    }
    
    let post = Post(title: "Мой первый пост")
}
