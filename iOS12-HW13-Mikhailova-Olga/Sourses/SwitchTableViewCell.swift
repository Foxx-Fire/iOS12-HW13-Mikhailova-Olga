//
//  SwitchTableViewCell.swift
//  13 HW
//
//  Created by mbpro2.0/16/512 on 27.01.2024.
//

import UIKit

class SwitchTableViewCell: StandartTableViewCell {
    
    override var identifier: String { return "SwitchTableViewCell" }
    
    // MARK: - Outlets
    lazy var mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.setOn(true, animated: true)
        mySwitch.addTarget(self, action: #selector(switchOnOff), for: .valueChanged)
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        return mySwitch
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
        addSubview(mySwitch)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            mySwitch.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            mySwitch.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            mySwitch.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
    
    //MARK: Actions
    @objc func switchOnOff() {
    }
}
