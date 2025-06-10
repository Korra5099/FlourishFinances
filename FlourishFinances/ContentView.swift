//
//  ContentView.swift
//  FlourishFinances
//
//  Created by Scholar on 6/9/25.
//


import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                Form {
                    Section(header: Text("User Info")) {
                        Text ("Name")
                        Text("Email")
                        Text("Password")
                    }
                    
                    NavigationLink(destination: SubcriptionPage()){
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
