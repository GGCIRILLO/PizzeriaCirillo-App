//
//  Pizzeria_CirilloApp.swift
//  Pizzeria Cirillo
//
//  Created by Luigi Cirillo on 12/03/23.
//

import SwiftUI

@main
struct Pizzeria_CirilloApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Bill())
        }
    }
}
