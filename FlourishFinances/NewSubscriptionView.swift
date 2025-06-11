//
//  NewSubscriptionView.swift
//  FlourishFinances
//
//  Created by Scholar on 6/11/25.
//

import SwiftUI

struct NewSubscriptionView: View {
    @State private var subscriptionTitle: String = ""
    @State private var isImportant: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Subscription Name:")

            TextField("Enter the subscription description...", text: $subscriptionTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
         
            Button {

            } label: {
                    Text("Save")
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    NewSubscriptionView()
}
