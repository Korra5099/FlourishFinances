//
//  SubcriptionPage.swift
//  FlourishFinances
//
//  Created by Scholar on 6/10/25.
//

import SwiftUI

struct SubscriptionPage: View {
    let backgroundColor = Color (.mint)
    var name: String
    var email: String
    var password: String
    
    @State private var showNewSubscription = false
    
    var body: some View {
        ZStack{
            Color(backgroundColor).edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 20) {
                Text("Welcome, \(name)")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                .fontWeight(.black)
                Text("Subscription Page")
                    .font(.system(size: 35))
                    .fontWeight(.black)
                Text("Write and Save your subscription below")
                    .font(.system(size: 25))
                    .fontWeight(.black)
                
                // Button to trigger sheet
                Button {
                    showNewSubscription = true
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Spacer()
            }
            .padding()
            .sheet(isPresented: $showNewSubscription) {
                NewSubscriptionView()
            }
        }
        
    }
}

struct NewSubcriptionView: View {
    var body: some View {
        Text("New Subscription Form")
    }
}

#Preview {
    SubscriptionPage(name: "Khira", email: "khira@example.com", password: "password123")
}

