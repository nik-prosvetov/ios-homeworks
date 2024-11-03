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
        imageView.layer.cornerRadius = 60
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 3
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let fullNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.text = "Full Name"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.text = "Status"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let statusTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter status"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 8
        textField.clipsToBounds = true
        textField.layer.borderWidth = 1
        return textField
    }()
    
    let setStatusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Set Status", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 16
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
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
        
        avatarImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        
        fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 24).isActive = true
        fullNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32).isActive = true
        
        statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 24).isActive = true
        statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 32).isActive = true
        
        statusTextField.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor).isActive = true
        statusTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32).isActive = true
        statusTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 8).isActive = true
        statusTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        setStatusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        setStatusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32).isActive = true
        setStatusButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 16).isActive = true
        setStatusButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}
