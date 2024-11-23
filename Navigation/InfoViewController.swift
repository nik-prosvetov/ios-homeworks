//
//  InfoViewController.swift
//  Navigation
//
//  Created by Nikita Prosvetov on 28.09.2024.
//

import UIKit

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Info"
        
        let button = UIButton(type: .system)
        button.setTitle("Показать алерт", for: .normal)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
    }
    
    @objc func showAlert() {
        let alertController = UIAlertController(title: "Внимание!", message: "Это сообщение для вас", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("Нажата кнопка OK")
        }
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel) { _ in
            print("Нажата кнопка Отмена")
        }
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
}
