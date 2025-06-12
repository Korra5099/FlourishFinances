//
//  SubscriptionView.swift
//  FlourishFinances
//
//  Created by Scholar on 6/12/25.
//

import SwiftUI
import SwiftData
struct SubscriptionView: View {
    @State private var showNewSub = false
    @Query var Subscriptions: [SubItem]
    
    var name: String
    var email: String
    var password: String
    
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
            List {
                ForEach (Subscriptions) { SubItem in
                    Text(SubItem.title)
                }
            }
        }
        if showNewSub {
            NewSubscriptionView()
        }
    }
}

#Preview {
    SubscriptionView(name: "Khira", email: "khira@gmail.com", password: "1234")
}
