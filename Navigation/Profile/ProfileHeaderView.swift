//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Nikita Prosvetov on 29.09.2024.
//

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
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let safeAreaFrame = safeAreaLayoutGuide.layoutFrame
        
        avatarImageView.frame = CGRect(
            x: safeAreaFrame.minX + 16,
            y: safeAreaFrame.minY + 16,
            width: 80,
            height: 80
        )
        nameLabel.frame = CGRect(
            x: avatarImageView.frame.minX + avatarImageView.frame.width + 16,
            y: safeAreaFrame.minY + 27,
            width: safeAreaFrame.width - 16 - 16 - avatarImageView.frame.width - 16,
            height: 20
        )
        
        button.frame = CGRect(
            x: safeAreaFrame.minX + 16,
            y: avatarImageView.frame.maxY + 16,
            width: safeAreaFrame.width - 16 - 16,
            height: 50
        )
        
        statusLabel.frame = CGRect(
            x: nameLabel.frame.minX,
            y: button.frame.minY - 34 - 16,
            width: nameLabel.frame.width,
            height: 16
        )
    }
    
    func setupViews() {
        
        nameLabel.text = "Имя"
        nameLabel.font = UIFont.systemFont(ofSize: 17)
        nameLabel.textColor = .black

        avatarImageView.image = UIImage(named: "avatar")
        avatarImageView.layer.cornerRadius = 40
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.borderWidth = 3

        statusLabel.text = "Статус"
        statusLabel.font = UIFont.systemFont(ofSize: 15)
        statusLabel.textColor = .gray

        button.setTitle("Показать статус", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 16

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
