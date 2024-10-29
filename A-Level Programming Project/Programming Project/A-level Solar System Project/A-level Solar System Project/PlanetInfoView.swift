//
//  PlanetInfoView.swift
//  A-level Solar System Project
//
//  Created by Jenelle Bankas on 07/11/2022.
//

import SwiftUI



struct PlanetInfoView: View {
    
    @State private var selectedPlanet: Int = 0
    @State private var count: Int = 0
    
   
    @State private var planetMass: Double = 0.0
    @State private var planetRadius: Double = 0.0
    @State private var planetDistanceSun: Double = 0.0
    
    var body: some View {
        Form{
            Section {
                TextField("Mass", value: $planetMass, format: .number)
                    .keyboardType(.decimalPad)
            } header: {
                Text("Mass of the planet")
            }
            Section {
                TextField("Radius", value: $planetRadius, format: .number)
                    .keyboardType(.decimalPad)
            } header: {
                Text("Radius of the planet")
            }
            Section {
                TextField("Distance from the Sun", value: $planetDistanceSun, format:.number)
                    .keyboardType(.decimalPad)
            } header: {
                Text("Distance to the sun")
            }
        }
    }
}

struct PlanetInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetInfoView()
    }
}
