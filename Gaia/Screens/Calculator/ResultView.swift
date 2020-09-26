//
//  ResultView.swift
//  Gaia
//
//  Created by Jerry Turcios on 9/26/20.
//

import SwiftUI

struct ResultView: View {
    @EnvironmentObject var calculatorStore: CalculatorStore
    @State private var emissionScore = 0

    func configureView() {
        let range = 0...100
        emissionScore = range.randomElement() ?? 50 // There was nothing I could do :c
    }

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Calculate the impact of your annual home energy consumption, travel and diet.")
                        .foregroundColor(.customDarkRed)
                        .font(.title3)
                    HStack {
                        Text("Your Annual Emissions")
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("\(emissionScore)")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.customDarkGreen)
                            Text("Tons of CO2")
                        }
                    }
                    .padding(.horizontal)
                    HStack {
                        Text("Local Annual Emissions")
                            .foregroundColor(.gray)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("\(emissionScore)")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.customDarkGreen.opacity(0.5))
                            Text("Tons of CO2")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding()
                .background(Color.customSoftPurple)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Result")
            .onAppear(perform: configureView)
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
