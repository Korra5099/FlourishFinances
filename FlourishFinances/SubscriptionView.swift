//
//  SubscriptionView.swift
//  FlourishFinances
//
//  Created by Scholar on 6/12/25.
//

import SwiftUI

struct SubscriptionView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Subscriptions")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {

                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    SubscriptionView()
}
