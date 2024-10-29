//
//  HomePageView.swift
//  A-level Solar System Project
//
//  Created by Jenelle Bankas on 03/10/2022.
//

import Foundation
import SwiftUI
import UIKit


struct HomePageView : View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var selection: String? = nil
    
    var body: some View {
        
        ZStack{
            NavigationView{
                VStack{
                    Form{
                        HStack{
                            Image("background")
                                .frame(width: 50, height: 150)
                        }
                            Section{
                                
                                TextField("Username", text: $username)
                                
                                    .keyboardType(.default)
                                SecureField("Password", text: $password)
                                
                                    .keyboardType(.default)
                            } header: {
                                Text("Login to see systems")
                            }
                            Section{
                                ZStack{
                                    NavigationLink(destination: StartView(), tag: "StartView", selection: $selection) {EmptyView()}
                                    Button("Login"){
                                        self.selection = "StartView"
                                    }.padding(1)
                                        .accentColor(.black)
                                }
                            }
                        }
                        Section{
                            NavigationLink(destination: NewUserView()){
                                
                                Label("New User", systemImage: "")
                                    .padding()
                            }.accentColor(.black)
                        }
                    }.navigationTitle("Solar System App")
                }.navigationBarBackButtonHidden(true)
        }
    }
}

struct HomePageView_Previews : PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}



