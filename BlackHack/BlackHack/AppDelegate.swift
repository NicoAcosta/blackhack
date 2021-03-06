//
//  AppDelegate.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 11/12/2020.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let navigationBarAppearance = UINavigationBar.appearance()
        
        // navigationBarAppearance.barTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.00000000000001)
        
        navigationBarAppearance.setBackgroundImage(UIImage(), for: .default)
        navigationBarAppearance.shadowImage = UIImage()
        navigationBarAppearance.isTranslucent = true
        
        navigationBarAppearance.tintColor = .systemBackground
        
        let barButtonAppearance = UIBarButtonItem.appearance()
        
        barButtonAppearance.setTitleTextAttributes([.font: UIFont(name:"GothamMedium", size: 18)!], for: .normal)
        
        FirebaseApp.configure()
        
        
        
        
        
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

