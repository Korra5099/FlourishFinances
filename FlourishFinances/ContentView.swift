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
                Form {
                    
                    Section(header: Text("User Info")) {
                        TextField("Name", text: $name)
                        TextField("Email", text: $email)
                        SecureField("Password", text: $password)
                    }
                    
                        
                        NavigationLink(destination: SubcriptionPage(name: name, email: email, password: password)) {
                            
                            Text("Submit")
                            
                            
                        }
                        .navigationTitle(Text("Sign Up"))
                    }
                }
                
                .padding()
                
            }
        }
    }
    #Preview {
        ContentView()
    }
