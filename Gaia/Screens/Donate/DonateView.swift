//
//  DonateView.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/26/20.
//

import SwiftUI

struct DonateView: View {
    var body: some View {
        VStack {
            Text("Donate")
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Gaia")
    }
}

struct DonateViewPreviews: PreviewProvider {
    static var previews: some View {
        DonateView()
    }
}
