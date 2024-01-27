//
//  SettingModel.swift
//  iOS12-HW13-Mikhailova-Olga
//
//  Created by mbpro2.0/16/512 on 27.01.2024.
//

import UIKit

enum AddsType {
    case standartType
    case switchType
    case wordType
    case numberType
}

struct Settings: Any {
    
    var icon: UIImage
    var setting: String
    var adds: AddsType
}

extension Settings {
    static var arrayOfSettings: [[Settings]] = [
        
        [Settings(icon: UIImage(named: "avia")!, setting: "Авиарежим", adds: .switchType),
         Settings(icon: UIImage(named: "wi-fi")!, setting: "Wi-Fi", adds: .wordType),
         Settings(icon: UIImage(named: "bluetooth")!, setting: "Bluetooth", adds: .wordType),
         Settings(icon: UIImage(named: "network")!, setting: "Сотовая связь", adds: .standartType),
         Settings(icon: UIImage(named: "modem")!, setting: "Режим модема", adds: .standartType),
         Settings(icon: UIImage(named: "vpn")!, setting: "VPN", adds: .switchType)],
        
        [Settings(icon: UIImage(named: "notifications")!, setting: "Уведомления", adds: .standartType),
         Settings(icon: UIImage(named: "sounds")!, setting: "Звуки, тактильные сигналы", adds: .standartType),
         Settings(icon: UIImage(named: "night")!, setting: "Не беспокоить", adds: .standartType),
         Settings(icon: UIImage(named: "screenTime")!, setting: "Экранное время", adds: .standartType)],
        
        [Settings(icon: UIImage(named: "settings")!, setting: "Основные", adds: .numberType),
         Settings(icon: UIImage(named: "switch")!, setting: "Пункт управления", adds: .standartType),
         Settings(icon: UIImage(named: "screen")!, setting: "Экран и яркость", adds: .standartType),
         Settings(icon: UIImage(named: "home")!, setting: "Экран домой", adds: .standartType)]
    ]
}

