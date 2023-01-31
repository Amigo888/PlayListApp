//
//  AppDelegate.swift
//  Junior(LogIn)
//
//  Created by Дмитрий Процак on 18.10.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let authViewController = AuthViewController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = authViewController
        window?.makeKeyAndVisible()
        
        return true
    }

}

