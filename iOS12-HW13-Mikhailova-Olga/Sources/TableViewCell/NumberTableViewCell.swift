//
//  NumberTableViewCell.swift
//  13 HW
//
//  Created by mbpro2.0/16/512 on 27.01.2024.
//

import UIKit

class NumberTableViewCell: StandartTableViewCell {
    
    override class var identifier: String { "NumberTableViewCell" }
    
    fileprivate enum Constants {
        static var smallOffset: CGFloat = 10
        static var bigOffset: CGFloat = 25
    }
    
    // MARK: - Outlets
    
    lazy var number: UIImageView = {
        let image = UIImage(named: "one")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 13
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setups
    
    private func setupHierarchy() {
        addSubview(number)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            number.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            number.topAnchor.constraint(equalTo: self.topAnchor, constant: Constants.smallOffset),
            number.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -Constants.smallOffset),
            number.heightAnchor.constraint(equalToConstant: Constants.bigOffset),
            number.widthAnchor.constraint(equalToConstant: Constants.bigOffset)
        ])
    }
}
