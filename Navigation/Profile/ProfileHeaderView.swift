//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Nikita Prosvetov on 29.09.2024.
//

//import UIKit
//
//class ProfileHeaderView: UIView {
//    let nameLabel = UILabel()
//    let statusLabel = UILabel()
//    let avatarImageView = UIImageView()
//    let button = UIButton()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupSubviews()
//        setupConstraints()
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        setupSubviews()
//        setupConstraints()
//    }
//
//    func setupSubviews() {
//        addSubview(nameLabel)
//        addSubview(statusLabel)
//        addSubview(avatarImageView)
//        addSubview(button)
//
//        nameLabel.text = "Имя"
//        nameLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
//        nameLabel.textColor = .black
//
//        statusLabel.text = "Статус"
//        statusLabel.font = UIFont.systemFont(ofSize: 14)
//        statusLabel.textColor = .gray
//
//        avatarImageView.image = UIImage(named: "avatar")
//        avatarImageView.layer.cornerRadius = 40
//        avatarImageView.clipsToBounds = true
//
//        button.setTitle("Показать статус", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = .systemBlue
//        button.layer.cornerRadius = 10
//        button.clipsToBounds = true
//
//        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
//    }
//
//    func setupConstraints() {
//        nameLabel.translatesAutoresizingMaskIntoConstraints = false
//        statusLabel.translatesAutoresizingMaskIntoConstraints = false
//        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
//            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
//            avatarImageView.widthAnchor.constraint(equalToConstant: 80),
//            avatarImageView.heightAnchor.constraint(equalToConstant: 80),
//
//            nameLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
//            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
//
//            statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
//            statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
//
//            button.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 16),
//            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
//            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
//            button.heightAnchor.constraint(equalToConstant: 44)
//        ])
//    }
//
//    @objc func buttonPressed() {
//        print("Текст из поля 'статус': \(statusLabel.text ?? "")")
//    }
//}

import UIKit

class ProfileHeaderView: UIView {

    let nameLabel = UILabel()
    let avatarImageView = UIImageView()
    let statusLabel = UILabel()
    let button = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        
        nameLabel.text = "Имя"
        nameLabel.font = UIFont.systemFont(ofSize: 17)
        nameLabel.frame = CGRect(x: 32, y: 27, width: 200, height: 20)
        nameLabel.textColor = .black

        avatarImageView.image = UIImage(named: "avatar")
        avatarImageView.frame = CGRect(x: 16, y: 16, width: 80, height: 80)
        avatarImageView.layer.cornerRadius = 40
        avatarImageView.clipsToBounds = true
        

        statusLabel.text = "Статус"
        statusLabel.font = UIFont.systemFont(ofSize: 15)
        statusLabel.frame = CGRect(x: 16, y: 140, width: 200, height: 20)
        statusLabel.textColor = .gray

        button.setTitle("Показать статус", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBlue
        button.frame = CGRect(x: 250, y: 200, width: 100, height: 44)

        addSubview(nameLabel)
        addSubview(avatarImageView)
        addSubview(statusLabel)
        addSubview(button)

        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }

    @objc func buttonPressed() {
        print("Текст из поля 'статус': \(statusLabel.text ?? "")")
    }
}
