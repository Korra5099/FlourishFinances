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

    @State private var showNewSubscription = false

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Subscription Page")
                .font(.system(size: 40))
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


struct NewSubcriptionView: View {
    var body: some View {
        Text("New Subscription Form")
    }
}

#Preview {
    SubscriptionPage(name: "Khira", email: "khira@example.com", password: "password123")
}

