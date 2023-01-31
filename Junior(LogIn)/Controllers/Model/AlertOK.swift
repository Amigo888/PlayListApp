//
//  AlertOK.swift
//  Junior(LogIn)
//
//  Created by Дмитрий Процак on 18.10.2022.
//

import UIKit

extension UIViewController {
    
    func alertOk(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(alertAction)
        
        present(alert, animated: true)
    }
}
