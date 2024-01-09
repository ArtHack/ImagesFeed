//
//  ProfileViewController.swift
//  ImagesFeed
//
//  Created by arthack on 08.01.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Photo")
        return imageView
    }()
    
    private lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 23)
        label.textColor = .white
        label.text = "Hello Worldov"
        return label
    }()
    
    private lazy var userNickLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .white
        label.text = "@hello_worldov"
        return label
    }()
    
    private lazy var userStatusLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .white
        label.text = "Hello, world!"
        return label
    }()
    
    private lazy var logoutButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Exit"), for: .normal)
        return button
    }()
    
    private lazy var yStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.addArrangedSubview(profileImageView)
        stack.addArrangedSubview(userNameLabel)
        stack.addArrangedSubview(userNickLabel)
        stack.addArrangedSubview(userStatusLabel)
        stack.alignment = .leading
        stack.spacing = 8
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        setupUI()
        setupLayout()
    }
    
    private func setupUI() {
        [yStack, logoutButton].forEach {
            view.addSubview($0)
        }
        [profileImageView, userNameLabel, userNickLabel, userStatusLabel, logoutButton, yStack].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            
             yStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
             yStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             
             profileImageView.heightAnchor.constraint(equalToConstant: 70),
             profileImageView.widthAnchor.constraint(equalToConstant: 70),
             
             logoutButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 56),
             logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),

        ])
    }
}
