//
//  ExtesionsMainViewController.swift
//  13 HW
//
//  Created by mbpro2.0/16/512 on 26.01.2024.
//


import UIKit

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let settingsOfIphone = settings?[indexPath.section][indexPath.row]
        
        switch settingsOfIphone?.adds {
            
        case .standartType:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! StandartTableViewCell
            cell.settingsOfIphone = settingsOfIphone
            cell.accessoryType = .disclosureIndicator
            return cell
            
        case .switchType:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchTableViewCell", for: indexPath) as! SwitchTableViewCell
            cell.settingsOfIphone = settingsOfIphone
            cell.mySwitch.tag = indexPath.row
            cell.accessoryView = cell.mySwitch
            cell.mySwitch.isOn.toggle()
            return cell
            
        case .numberType:
            let cell = tableView.dequeueReusableCell(withIdentifier: "NumberTableViewCell", for: indexPath) as! NumberTableViewCell
            cell.settingsOfIphone = settingsOfIphone
            cell.accessoryType = .disclosureIndicator
            return cell
            
        case .wordType:
            if indexPath.row % 2 == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "WordTableViewCell", for: indexPath) as! WordTableViewCell
                cell.settingsOfIphone = settingsOfIphone
                cell.accessoryType = .disclosureIndicator
                cell.vklLabel.text = "Вкл."
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "WordTableViewCell", for: indexPath) as! WordTableViewCell
                cell.settingsOfIphone = settingsOfIphone
                cell.accessoryType = .disclosureIndicator
                cell.vklLabel.text = "Не подключено"
                return cell
            }
        default: return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings?[section].count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        settings?.count ?? 0
    }
}

// MARK: - Delegate
extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let settingsOfIphone = settings?[indexPath.section][indexPath.row]
        print("Нажата ячейка \(indexPath.row) \( settingsOfIphone?.setting ?? "")" )
    }
}
