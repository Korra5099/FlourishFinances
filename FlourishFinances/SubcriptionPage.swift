//
//  SubcriptionPage.swift
//  FlourishFinances
//
//  Created by Scholar on 6/10/25.
//

import SwiftUI

struct SubscriptionPage: View {
    var name: String
    var email: String
    var password: String

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Welcome, \(name)!")
                .font(.title)
                .fontWeight(.heavy)

            Text("Current Subscriptions:")
                .fontWeight(.medium)
Spacer()
            GroupBox(label: Text("Subscription Details")) {
                VStack(alignment: .leading) {
                    Text("Name: Spotify")
                    Text("Subscription Type: Premium")
                    Text("Status: Active")
                    Text(verbatim: "Expiration Date: June 30, 2025")
                    Spacer()
                }
                
                .padding(.top, 5)
            }
        }
        .padding()
    }
}

#Preview {
    SubscriptionPage(name: "Khira", email: "khira@example.com", password: "password123")
}
