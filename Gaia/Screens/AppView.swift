//
//  AppView.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/25/20.
//

import SwiftUI

struct AppView: View {
    init() {
        UINavigationBar.appearance().barTintColor = UIColor(named: "LightBlue")
        UITabBar.appearance().barTintColor = UIColor(named: "LightBlue")
    }

    var body: some View {
        TabView {
            // Home screen
            NavigationView {
                HomeView()
            }
            .tabItem {
                Image("HomeIcon")
            }
            // Calculator screen
            NavigationView {
                CalculatorView()
            }
            .tabItem {
                Image("CalculatorIcon")
            }
            // Take action screen
            NavigationView {
                TakeActionView()
            }
            .tabItem {
                Image("TakeActionIcon")
            }
            // Donate screen
            NavigationView {
                DonateView()
            }
            .tabItem {
                Image("DonateIcon")
            }
        }
    }
}
