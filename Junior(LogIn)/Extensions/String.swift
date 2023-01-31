//
//  String.swift
//  Junior(LogIn)
//
//  Created by Дмитрий Процак on 18.10.2022.
//

import Foundation
//проверка на валидность
extension String {
    
    enum ValidTypes {
        case name
        case email
        case password
       
    }
    //регулярные выражени(строка образец с которой будем все сравнивать)
    enum Regex: String {
        case name = "[a-zA-z]{1,}" //--> в квадратных скобках указываем какме буквы исп., в фигурных min & max кол- во символов
        case email = "[a-zA-Z0-9._]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,}"
        case password = "(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{6,}"
       
    }
    
    func isValid(validType: ValidTypes) -> Bool {
        //проверять на соответствие
        let format = "SELF MATCHES %@"
        var regex = ""
        
        switch validType {
        case .name: regex = Regex.name.rawValue
        case .email: regex = Regex.email.rawValue
        case .password: regex = Regex.password.rawValue
       
        }
        
        return NSPredicate(format: format, regex).evaluate(with: self)
    }
}
