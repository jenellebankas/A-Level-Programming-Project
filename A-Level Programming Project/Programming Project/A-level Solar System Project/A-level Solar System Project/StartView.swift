//
//  HomePageView.swift
//  A-level Solar System Project
//
//  Created by Jenelle Bankas on 03/10/2022.
//

import Foundation
import SwiftUI
import UIKit

//To create starting page view
struct StartView : View {
    var body: some View {
        ZStack{
            HStack{
                TabView{
                    InformationView()
                        .tabItem{
                            Label("Info", systemImage: "i.circle")
                        }
                    CreateView()
                        .tabItem{
                            Label("Create", systemImage: "star")
                        }
                    SettingsView()
                        .tabItem{
                            Label("Settings", systemImage: "hammer")
                        }
                        .accentColor(.white)
                }.navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct StartView_Previews : PreviewProvider {
    static var previews: some View {
        StartView()
    }
}


