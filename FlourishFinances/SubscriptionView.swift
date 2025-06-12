//
//  SubscriptionView.swift
//  FlourishFinances
//
//  Created by Scholar on 6/12/25.
//

import SwiftUI

struct SubscriptionView: View {
    @State private var showNewSub = false
    var body: some View {
        VStack{
            HStack{
                Text("Subscriptions")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation{
                        showNewSub = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding()
            Spacer()
        }
        if showNewSub {
            NewSubscriptionView()
        }
    }
}

#Preview {
    SubscriptionView()
}
