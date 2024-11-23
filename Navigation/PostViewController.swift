//
//  PostViewController.swift
//  Navigation
//
//  Created by Nikita Prosvetov on 28.09.2024.
//

import UIKit

class PostViewController: UIViewController {
    let post: Post
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = post.title
        view.backgroundColor = .gray
        
        let infoBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(showInfo))
        navigationItem.rightBarButtonItem = infoBarButtonItem
    }
    
    @objc func showInfo() {
        let infoViewController = InfoViewController()
        infoViewController.modalPresentationStyle = .fullScreen
        present(infoViewController, animated: true, completion: nil)
    }
}
