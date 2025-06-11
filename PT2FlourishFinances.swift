//
//  PT2FlourishFinances.swift
//  FlourishFinances
//
//  Created by Scholar on 6/11/25.
//

import SwiftUI

struct PT2FlourishFinances: View {
    @State private var taskDescription: String = ""
    @State private var isImportant: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Subscription:")
            
            TextField("Enter the subscription description...", text: $taskDescription)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Toggle("Is it important?", isOn: $isImportant)
            Button {

            } label: {
                    Text("Save")
            }
        }
        .padding()
    }
}

#Preview {
    PT2FlourishFinances()
}

