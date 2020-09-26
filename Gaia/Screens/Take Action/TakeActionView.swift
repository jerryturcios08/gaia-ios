//
//  TakeActionView.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/26/20.
//

import SwiftUI

struct TakeActionView: View {
    var navigationBarItems: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: {}) {
                Image("DonateNowButton")
            }
        }
    }

    var body: some View {
        VStack {
            Text("Take Action")
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Gaia")
        .toolbar { navigationBarItems }
    }
}

struct TakeActionViewPreviews: PreviewProvider {
    static var previews: some View {
        TakeActionView()
    }
}
