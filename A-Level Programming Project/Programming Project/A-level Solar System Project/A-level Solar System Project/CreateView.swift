//
//  CreateView.swift
//  A-level Solar System Project
//
//  Created by Jenelle Bankas on 03/10/2022.
//

import Foundation
import SwiftUI
import UIKit

//For Create View
struct CreateView : View {
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section{
                    
                        NavigationLink(destination: InputPlanetView()){
                            Label("Create Planets", systemImage: "Star")
                               
                    }
                        
                    Section{
                            
                        NavigationLink(destination: ContentView()){
                            Label("Show System", systemImage: "Star")
                            }
                        }
                    }
                }
            }
        }
    }
}

struct CreateView_Previews : PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
