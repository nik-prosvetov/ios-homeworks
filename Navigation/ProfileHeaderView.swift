//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Nikita Prosvetov on 19.10.2024.
//

import UIKit

class ProfileHeaderView: UIView {
    let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "avatar")
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 3
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let fullNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        label.text = "Full Name"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.text = "Status"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let statusTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter status"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    let setStatusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Set Status", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
    }
    
    func setupSubviews() {
        addSubviews()
        
        avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        avatarImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16).isActive = true
        fullNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        
        statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16).isActive = true
        statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 8).isActive = true
        
        statusTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        statusTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        statusTextField.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8).isActive = true
        
        setStatusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        setStatusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        setStatusButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 8).isActive = true
    }
}
