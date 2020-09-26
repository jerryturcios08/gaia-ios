//
//  ContentView.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/25/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Home")
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Gaia")
    }
}

struct HomeViewPreviews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 11")
    }
}
