//
//  CalculatorStore.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/26/20.
//

import Foundation

class CalculatorStore: ObservableObject {
    // Household published variables
    @Published var residentsQuantity = 1
    @Published var residenceOption = "Detached Single Family House"
    @Published var housingSizeOption = "Under 500 sq ft"
    @Published var cleanEnergyOption = "Yes, some"
    @Published var dietOption = "Meat lover"

    // Transportation published variables
    @Published var weeklyRailTravelOption = "0 miles"
    @Published var weeklyBusTravelOption = "0 miles"

    // Travel published variables
    @Published var longRoundTripsQuantity = 0
    @Published var mediumRoundTripsQuantity = 0
    @Published var shortRoundTripsQuantity = 0
    @Published var hotelNightsOption = "0 nights"
}
