//
//  UserPlanetInput.swift
//  A-level Solar System Project
//
//  Created by Jenelle Bankas on 06/10/2022.
//

import SwiftUI


struct Planet: Identifiable {
    let id: Int
    let name: String
    
}

struct InputPlanetView: View {
    
    var numPlanets = [1, 2, 3, 4, 5, 6, 7, 8]
    
    @State private var selection: String? = nil
    
    @State var planetList = [
        Planet(id: 0, name: "Mercury"),
        Planet(id: 1, name: "Venus"),
        Planet(id: 2, name: "Earth"),
        Planet(id: 3, name: "Mars" ),
        Planet(id: 4, name: "Jupiter"),
        Planet(id: 5, name: "Saturn"),
        Planet(id: 6, name: "Uranus"),
        Planet(id: 7, name: "Neptune")
        
    ]
    
    
    var body: some View {
        
        NavigationView{
            List(planetList) {planet in
                Section{
                    ZStack{
                        NavigationLink(destination: PlanetInfoView(), tag: "PlanetInfoView", selection: $selection) {EmptyView()}
                        Button("Planet \(planet.name)"){
                            self.selection = "PlanetInfoView"
                        }.padding(1)
                            .accentColor(.black)
                    }
                    
                }.navigationBarItems(
                    trailing: Button(action: addPlanet, label: { Text("Add Planets") })
                )
            }.navigationBarTitle("Make Planets")
        }
    }

    func addPlanet() {
        if let newPlanet = planetList.randomElement(){
            planetList.append(newPlanet)
        }
    }
}

struct InputPlanetView_Previews: PreviewProvider {
    static var previews: some View {
        InputPlanetView()
    }
}



