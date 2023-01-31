//
//  UserDefaultsManager.swift
//  Junior(LogIn)
//
//  Created by Дмитрий Процак on 18.10.2022.
//

import Foundation
//UserDefaults
class DataBase {
    //создаем константу которая являеться экземпляром класса
    static let shared = DataBase()
    //энам для более удобной работы с ключами
    enum SettingsKeys: String {
        case userKey
        case activeUser
    }
    
    let userKey = SettingsKeys.userKey.rawValue
    let activeUserKey = SettingsKeys.activeUser.rawValue
    let defaults = UserDefaults.standard
    //массив юзеров(get-когда достаем значения,set-когда устанавливаем)
    var users: [User] {
        get {
            //сначала берем дату
            if let data = defaults.value(forKey: userKey) as? Data {
                //декодируем ее
                 return try! PropertyListDecoder().decode([User].self, from: data)
            } else {
                return [User]()
                
            }
        }
        //чтобы добавить массив структур надо сначала преобразовать в дату
        set {
            if let data = try? PropertyListEncoder().encode(newValue) {
                //сохраняем в defaults
                 defaults.set(data, forKey: userKey)
                
            }
        }
    }
    //сохранение данных в массив юзеров
    func saveUser(firstName: String, secondName: String, phone: String, email: String, password: String, age: Date) {
        
        let user = User(firstName: firstName, secondName: secondName , phone: phone, email: email, password: password, age: age)
        users.insert(user, at: 0)
    }
    //один юзер(опционалный так как не факт что он прийдет)
    var activeUser: User? {
        get {
           if let data = defaults.value(forKey: activeUserKey) as? Data {
                return try! PropertyListDecoder().decode(User.self, from: data)
           } else {
               return nil
           }
        }
        
        set {
           if let data = try? PropertyListEncoder().encode(newValue) {
                defaults.set(data, forKey: activeUserKey)
            }
        }
    }
    
    func saveActiveUser(user: User) {
        activeUser = user
    }
}
