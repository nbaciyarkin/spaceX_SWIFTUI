//
//  spaceXApp.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 31.12.2021.
//

import SwiftUI


@main
struct spaceXApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginPage()
            
               
        }
    }
}
