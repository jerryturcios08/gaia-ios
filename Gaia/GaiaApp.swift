//
//  GaiaApp.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/25/20.
//

import SwiftUI

@main
struct GaiaApp: App {
    @StateObject private var calculatorStore = CalculatorStore()

    var body: some Scene {
        WindowGroup {
            AppView()
                .environmentObject(calculatorStore)
        }
    }
}
