//
//  Custom_Tabbar_SwiftUIApp.swift
//  Custom-Tabbar-SwiftUI
//
//  Created by Caner Ates on 30.04.2024.
//

import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        
        return true
    }
}

@main
struct Custom_Tabbar_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
