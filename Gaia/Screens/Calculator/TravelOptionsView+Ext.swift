//
//  TravelOptionsView+Ext.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/26/20.
//

import SwiftUI

extension TravelOptionsView {
    struct RoundTripQuantityView: View {
        @Binding var numberOfRoundTrips: Int
        @State private var roundTripQuantityPickerVisible = false
        var roundTripOptions: [Int] = Array(0...10)

        var description: String

        func toggleRoundTripQuantityPicker() {
            roundTripQuantityPickerVisible = !roundTripQuantityPickerVisible
        }

        var body: some View {
            Button(action: toggleRoundTripQuantityPicker) {
                HStack {
                    Text(description)
                        .foregroundColor(.primary)
                    Spacer()
                    Text("\(numberOfRoundTrips)")
                        .foregroundColor(.secondary)
                }
            }
            if roundTripQuantityPickerVisible {
                Picker("Residence option", selection: $numberOfRoundTrips) {
                    ForEach(roundTripOptions, id: \.self) { count in
                        if count == 10 {
                            Text("10+")
                        } else {
                            Text("\(count)")
                        }
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }

    struct HotelNightsOptionView: View {
        @EnvironmentObject var calculatorStore: CalculatorStore
        @State private var hotelNightsSelectedIndex = 0
        @State private var hotelNightsOptionsPickerVisible = false
        var hotelNightsOptions = [
            "0 nights", "1-2 nights", "3-4 nights", "5-6 nights",
            "1-2 weeks", "3-4 weeks", "1-2 months"
        ]

        func handleHotelNightsOption<V>(_ value: V) {
            calculatorStore.hotelNightsOption = hotelNightsOptions[hotelNightsSelectedIndex]
        }

        func toggleHotelNightsOptionsPicker() {
            hotelNightsOptionsPickerVisible = !hotelNightsOptionsPickerVisible
        }

        var body: some View {
            Group {
                Button(action: toggleHotelNightsOptionsPicker) {
                    HStack {
                        Text("Average number of nights spent in a hotel per year")
                            .foregroundColor(.primary)
                        Spacer()
                        Text(hotelNightsOptions[hotelNightsSelectedIndex])
                            .foregroundColor(.secondary)
                    }
                }
                if hotelNightsOptionsPickerVisible {
                    Picker("Hotel nights option", selection: $hotelNightsSelectedIndex) {
                        ForEach(hotelNightsOptions.indices) { index in
                            Text(hotelNightsOptions[index])
                                .tag(index)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
            }
            .onChange(of: hotelNightsSelectedIndex, perform: handleHotelNightsOption)
        }
    }
}
