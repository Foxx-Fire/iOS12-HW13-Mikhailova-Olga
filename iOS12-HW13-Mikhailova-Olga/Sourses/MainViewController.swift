//
//  ViewController.swift
//  13 HW
//
//  Created by mbpro2.0/16/512 on 26.01.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    var settings: [[Settings]]?
    
    //MARK: - Outlets
    private lazy var tableView: UITableView  = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(StandartTableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: "SwitchTableViewCell")
        tableView.register(NumberTableViewCell.self, forCellReuseIdentifier: "NumberTableViewCell")
        tableView.register(WordTableViewCell.self, forCellReuseIdentifier: "WordTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        // navigationController?.navigationBar.standardAppearance = true
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setups
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
