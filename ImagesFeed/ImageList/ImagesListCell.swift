//
//  ImagesListCell.swift
//  ImagesFeed
//
//  Created by arthack on 04.01.2024.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    
    static let reusedIdentifier = "ImagesListCell"
    
    lazy var cellImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "0")
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 8
        return image
    }()
    
    lazy var likeButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "Active")
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var dateLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "12.12.1221"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(cellImage)
        addSubview(likeButton)
        addSubview(dateLabel)
        
        NSLayoutConstraint.activate([
            cellImage.topAnchor.constraint(equalTo: topAnchor),
            cellImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            cellImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            cellImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            likeButton.topAnchor.constraint(equalTo: topAnchor),
            likeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            dateLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
}
