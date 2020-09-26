//
//  CalculatorView.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/26/20.
//

import SwiftUI

struct CalculatorView: View {
    @State private var isRecyclingItems = true
    @State private var railTravelOptionSelected = false
    @State private var busTravelOptionSelected = false
    @State private var carTravelOptionSelected = false
    @State private var bikeTravelOptionSelected = false

    var navigationBarItems: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: {}) {
                Image("DonateNowButton")
            }
        }
    }

    var body: some View {
        VStack(alignment: .center) {
            Form {
                Section(header: Text("Household")) {
                    ResidenceQuantityView()
                    ResidenceOptionView()
                    HousingSizeOptionView()
                    CleanEnergyOptionView()
                    Toggle("Do you recycle items such as metal, plastic, glass, or paper?", isOn: $isRecyclingItems)
                    DietOptionView()
                }
                Section(header: Text("About Transportation")) {
                    Text("How do you typically get around? Toggle all the ways you use transportation")
                    Toggle("Intercity/Commuter rail", isOn: $railTravelOptionSelected)
                    Toggle("Bus/Subway/Metro", isOn: $busTravelOptionSelected)
                    Toggle("Car", isOn: $carTravelOptionSelected)
                    Toggle("Bike/Walk", isOn: $bikeTravelOptionSelected)
                    if railTravelOptionSelected {
                        WeeklyRailTravelOptionView()
                    }
                    if busTravelOptionSelected {
                        WeeklyBusTravelOptionView()
                    }
                }
                NavigationLink(destination: TravelOptionsView()) {
                    Text("Continue")
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Gaia")
        .toolbar { navigationBarItems }
    }
}

struct CalculatorViewPreviews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
