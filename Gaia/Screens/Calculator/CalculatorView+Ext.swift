//
//  CalculatorView+Ext.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/26/20.
//

import SwiftUI

extension CalculatorView {
    // MARK: - Household options

    struct ResidenceQuantityView: View {
        @State private var numberOfResidents = 1
        @State private var residentQuantityPickerVisible = false
        var residentQuantityOptions: [Int] = Array(1...5)

        func toggleResidentQuantityPicker() {
            residentQuantityPickerVisible = !residentQuantityPickerVisible
        }

        var body: some View {
            Button(action: toggleResidentQuantityPicker) {
                HStack {
                    Text("Number of residents")
                        .foregroundColor(.primary)
                    Spacer()
                    Text("\(numberOfResidents)")
                        .foregroundColor(.secondary)
                }
            }
            if residentQuantityPickerVisible {
                Picker("Number of residents", selection: $numberOfResidents) {
                    ForEach(residentQuantityOptions, id: \.self) { count in
                        if count == 1 {
                            Text("1 (only myself)")
                        } else if count == 5 {
                            Text("5+")
                        } else {
                            Text("\(count)")
                        }
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }

    struct ResidenceOptionView: View {
        @State private var residenceSelectedIndex = 0
        @State private var residenceOptionsPickerVisible = false
        var residenceOptions = [
            "Detached Single Family House", "Attached Single Family House",
            "Apartment Building (2 to 4 units)", "Apartment Building (5+ units)",
            "Mobile Home"
        ]

        func toggleResidenceOptionsPicker() {
            residenceOptionsPickerVisible = !residenceOptionsPickerVisible
        }

        var body: some View {
            Button(action: toggleResidenceOptionsPicker) {
                HStack {
                    Text("I live in a(an)")
                        .foregroundColor(.primary)
                    Spacer()
                    Text(residenceOptions[residenceSelectedIndex])
                        .foregroundColor(.secondary)
                }
            }
            if residenceOptionsPickerVisible {
                Picker("Residence option", selection: $residenceSelectedIndex) {
                    ForEach(residenceOptions.indices) { index in
                        Text(residenceOptions[index])
                            .tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }

    struct HousingSizeOptionView: View {
        @State private var housingSizeSelectedIndex = 0
        @State private var housingSizeOptionsPickerVisible = false
        var housingSizeOptions = [
            "Under 500 sq ft", "500-999", "1000-1499",
            "1500-1999", "2000-2499", "2500-2999",
            "3000-3999", "Over 4000"
        ]

        func toggleHousingSizeOptionsPicker() {
            housingSizeOptionsPickerVisible = !housingSizeOptionsPickerVisible
        }

        var body: some View {
            Button(action: toggleHousingSizeOptionsPicker) {
                HStack {
                    Text("Size of housing")
                        .foregroundColor(.primary)
                    Spacer()
                    Text(housingSizeOptions[housingSizeSelectedIndex])
                        .foregroundColor(.secondary)
                }
            }
            if housingSizeOptionsPickerVisible {
                Picker("Housing size option", selection: $housingSizeSelectedIndex) {
                    ForEach(housingSizeOptions.indices) { index in
                        Text(housingSizeOptions[index])
                            .tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }

    struct CleanEnergyOptionView: View {
        @State private var cleanEnergySelectedIndex = 0
        @State private var cleanEnergyPickerVisible = false
        var cleanEnergyOptions = ["Yes, some", "Yes, most", "Yes, all", "No", "I don't know"]

        func toggleCleanEnergyPicker() {
            cleanEnergyPickerVisible = !cleanEnergyPickerVisible
        }

        var body: some View {
            Button(action: toggleCleanEnergyPicker) {
                HStack {
                    Text("Do you purchase clean energy such as wind or solar?")
                        .foregroundColor(.primary)
                    Spacer()
                    Text(cleanEnergyOptions[cleanEnergySelectedIndex])
                        .foregroundColor(.secondary)
                }
            }
            if cleanEnergyPickerVisible {
                Picker("Clean energy option", selection: $cleanEnergySelectedIndex) {
                    ForEach(cleanEnergyOptions.indices) { index in
                        Text(cleanEnergyOptions[index])
                            .tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }

    struct DietOptionView: View {
        @State private var dietSelectedIndex = 0
        @State private var dietPickerVisible = false
        var dietOptions = ["Meat lover", "Average Omnivore", "No beef", "Vegetarian", "Vegan"]

        func toggleDietPicker() {
            dietPickerVisible = !dietPickerVisible
        }

        var body: some View {
            Button(action: toggleDietPicker) {
                HStack {
                    Text("My diet is mostly:")
                        .foregroundColor(.primary)
                    Spacer()
                    Text(dietOptions[dietSelectedIndex])
                        .foregroundColor(.secondary)
                }
            }
            if dietPickerVisible {
                Picker("Diet option", selection: $dietSelectedIndex) {
                    ForEach(dietOptions.indices) { index in
                        Text(dietOptions[index])
                            .tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }

    // MARK: - Transportation options

    struct WeeklyRailTravelOptionView: View {
        @State private var weeklyRailTravelSelectedIndex = 0
        @State private var weeklyRailTravelPickerVisible = false
        var weeklyRailTravelOptions = [
            "0 miles", "Under 5 miles", "Under 5-9.9 miles", "10-14.9 miles",
            "15-19.9 miles", "20-29.9 miles", "30+ miles"
        ]

        func toggleWeeklyRailTravelPicker() {
            weeklyRailTravelPickerVisible = !weeklyRailTravelPickerVisible
        }

        var body: some View {
            Button(action: toggleWeeklyRailTravelPicker) {
                HStack {
                    Text("Average total weekly travel via intercity or commuter rail...")
                        .foregroundColor(.primary)
                    Spacer()
                    Text(weeklyRailTravelOptions[weeklyRailTravelSelectedIndex])
                        .foregroundColor(.secondary)
                }
            }
            if weeklyRailTravelPickerVisible {
                Picker("Weekly rail travel option", selection: $weeklyRailTravelSelectedIndex) {
                    ForEach(weeklyRailTravelOptions.indices) { index in
                        Text(weeklyRailTravelOptions[index])
                            .tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }

    struct WeeklyBusTravelOptionView: View {
        @State private var weeklyBusTravelSelectedIndex = 0
        @State private var weeklyBusTravelPickerVisible = false
        var weeklyBusTravelOptions = [
            "0 miles", "Under 5 miles", "Under 5-9.9 miles", "10-14.9 miles",
            "15-19.9 miles", "20-29.9 miles", "30+ miles"
        ]

        func toggleWeeklyBusTravelPicker() {
            weeklyBusTravelPickerVisible = !weeklyBusTravelPickerVisible
        }

        var body: some View {
            Button(action: toggleWeeklyBusTravelPicker) {
                HStack {
                    Text("Average total weekly travel via intercity or commuter rail...")
                        .foregroundColor(.primary)
                    Spacer()
                    Text(weeklyBusTravelOptions[weeklyBusTravelSelectedIndex])
                        .foregroundColor(.secondary)
                }
            }
            if weeklyBusTravelPickerVisible {
                Picker("Weekly rail travel option", selection: $weeklyBusTravelSelectedIndex) {
                    ForEach(weeklyBusTravelOptions.indices) { index in
                        Text(weeklyBusTravelOptions[index])
                            .tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }
}
