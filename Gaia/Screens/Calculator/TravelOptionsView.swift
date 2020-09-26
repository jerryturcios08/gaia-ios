//
//  TravelOptionsView.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/26/20.
//

import SwiftUI

struct TravelOptionsView: View {
    @State private var numberOfLongRoundTrips = 0
    @State private var numberOfMediumRoundTrips = 0
    @State private var numberOfShortRoundTrips = 0

    var body: some View {
        Form {
            Section(header: Text("Travel")) {
                Text("Calculate the impact of your travel.")
                    .foregroundColor(.green)
                RoundTripQuantityView(
                    numberOfRoundTrips: $numberOfLongRoundTrips,
                    description: "Number of long round-trip flights (2500+ miles) I make in a year"
                )
                RoundTripQuantityView(
                    numberOfRoundTrips: $numberOfMediumRoundTrips,
                    description: "Number of medium round-trip flights (300-2500 miles one way) I make in a year"
                )
                RoundTripQuantityView(
                    numberOfRoundTrips: $numberOfShortRoundTrips,
                    description: "Number of short round-trip flights (<300 miles one way) I make in a year"
                )
                HotelNightsOptionView()
            }
            Section {
                Image("PhotoCalculator")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            HStack {
                Spacer()
                Button("Submit", action: {})
                    .foregroundColor(.orange)
                Spacer()
            }
        }
        .navigationTitle("Gaia")
    }
}

struct TravelOptionsViewPreviews: PreviewProvider {
    static var previews: some View {
        TravelOptionsView()
    }
}
