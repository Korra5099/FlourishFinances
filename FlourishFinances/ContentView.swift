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
            Form {
                Section(header: Text("User Info")) {
                    Text("Name")
                    Text("Email")
                    Text("Password")
                }
                NavigationLink(destination: Text("Destination")) {
                    Text("Next Page")
                }
                VStack {
                    
                }
            }
        }
        
        
        .padding()
    }
}
    
   
                
        
            
            
            
            


#Preview {
    ContentView()
}
