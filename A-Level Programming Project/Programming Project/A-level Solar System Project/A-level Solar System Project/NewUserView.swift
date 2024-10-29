//
//  NewUserView.swift
//  A-level Solar System Project
//
//  Created by Jenelle Bankas on 05/10/2022.
//

import SwiftUI

struct NewUserView: View {
    @State var newUsername: String = ""
    @State var newPassword: String = ""
    @State var checkPassword: String = ""
    @State private var selection: String? = nil
    
    var body: some View {
       
        VStack{
            
            NavigationView{
                VStack{
                    Text("Create New User")
                        .bold()
                        .frame(alignment: .top)
                        .font(.system(size: 30))
                        .padding()
    
                        Form{
                            Section{
                                TextField("Username", text: $newUsername)
                                    .keyboardType(.default)
                                SecureField("Password", text: $newPassword)
                                
                                    .keyboardType(.default)
                            } header: {
                                Text("Enter a new username")
                            }
                            Section{

                                SecureField("Password", text: $checkPassword)
                                
                                    .keyboardType(.default)
                            } header: {
                                Text("Re-Enter Your Password")
                            }
                            
                            Section{
                                ZStack{
                                    NavigationLink(destination: StartView(), tag: "StartView", selection: $selection) {EmptyView()}
                                        Button("Create New User"){
                                            self.selection = "StartView"
                                        }.accentColor(.black)
                            }
                        }
                    }
                }
            }.navigationBarBackButtonHidden(true)
        }
    }
}

struct NewUserView_Previews: PreviewProvider {
    static var previews: some View {
        NewUserView()
    }
}
