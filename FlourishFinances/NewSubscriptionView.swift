//
//  NewSubscriptionView.swift
//  FlourishFinances
//
//  Created by Scholar on 6/12/25.
//

import SwiftUI

struct NewSubscriptionView: View {
    var body: some View {
        VStack{
            Text("Subscription Name:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter Subscription name...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
            }
            
            Button {

            } label: {
                    Text("Save")
            }
        }
        .padding()
    }
}

#Preview {
    NewSubscriptionView()
}
