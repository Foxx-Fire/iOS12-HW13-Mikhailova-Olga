//
//  TableViewCell.swift
//  13 HW
//
//  Created by mbpro2.0/16/512 on 26.01.2024.
//

import UIKit

class StandartTableViewCell: UITableViewCell {
    
    var identifier: String { return "TableViewCell" }
    
    var settingsOfIphone: Settings? {
        didSet {
            icon.image = settingsOfIphone?.icon
            setting.text = settingsOfIphone?.setting
        }
    }
    
    // MARK: - Outlets
    private lazy var icon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var setting: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 19, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    //MARK: - Setups
    private func setupHierarchy() {
        addSubview(icon)
        addSubview(setting)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            icon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            icon.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            icon.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            icon.heightAnchor.constraint(equalToConstant: 35),
            icon.widthAnchor.constraint(equalToConstant: 35),
            
            setting.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 20),
            setting.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
    }
    //MARK: - Reuse
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.settingsOfIphone = nil
    }
}
