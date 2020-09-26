//
//  CalculatorView.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/26/20.
//

import SwiftUI

struct CalculatorView: View {
    @EnvironmentObject var calculatorStore: CalculatorStore
    @State private var isRecyclingItems = false
    @State private var railTravelOptionSelected = false
    @State private var busTravelOptionSelected = false
    @State private var carTravelOptionSelected = false
    @State private var bikeTravelOptionSelected = false

    func handleIsRecyclingItemsChange<V>(_ value: V) {
        calculatorStore.isRecycling = isRecyclingItems
    }

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
        .onChange(of: isRecyclingItems, perform: handleIsRecyclingItemsChange)
        .toolbar { navigationBarItems }
    }
}

struct CalculatorViewPreviews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
