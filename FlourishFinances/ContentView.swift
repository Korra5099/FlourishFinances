//
//  ContentView.swift
//  FlourishFinances
//
//  Created by Scholar on 6/9/25.
//


import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            ZStack {
                Color("Blue")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text("User Info")
                            .font(.headline)
                            .padding(.top)
                        
                        TextField("Name", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        NavigationLink(destination: SubscriptionPage(name: name, email: email, password: password)) {
                            Text("Submit")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        .padding(.top)
                        
                        Spacer()
                    }
                    .padding()
                }
            }
            .navigationTitle("Sign Up")
        }
    }
}

#Preview {
    ContentView()
}
