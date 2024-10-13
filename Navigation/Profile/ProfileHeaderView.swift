//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Nikita Prosvetov on 29.09.2024.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let nameLabel: UILabel = {
        let nameLabelParameters = UILabel()
        nameLabelParameters.text = "Имя"
        nameLabelParameters.font = UIFont.systemFont(ofSize: 17)
        nameLabelParameters.textColor = .black
        
        return nameLabelParameters
    } ()
    
    let avatarImageView: UIImageView = {
        let avatarImageViewParameters = UIImageView()
        avatarImageViewParameters.image = UIImage(named: "avatar")
        avatarImageViewParameters.layer.cornerRadius = 40
        avatarImageViewParameters.clipsToBounds = true
        avatarImageViewParameters.layer.borderColor = UIColor.white.cgColor
        avatarImageViewParameters.layer.borderWidth = 3
        
        return avatarImageViewParameters
    }()
    
    let statusLabel: UILabel = {
        let statusLabelParameters = UILabel()
        statusLabelParameters.text = "Статус"
        statusLabelParameters.font = UIFont.systemFont(ofSize: 15)
        statusLabelParameters.textColor = .gray
        
        return statusLabelParameters
    }()
    
    let button: UIButton = {
        let buttonParameters = UIButton()
        buttonParameters.setTitle("Показать статус", for: .normal)
        buttonParameters.setTitleColor(.black, for: .normal)
        buttonParameters.backgroundColor = .systemBlue
        buttonParameters.layer.cornerRadius = 16
        
        return buttonParameters
    }()

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
