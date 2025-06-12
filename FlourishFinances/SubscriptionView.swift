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
    @Environment(\.modelContext) var modelContext
    var name: String
    var email: String
    var password: String
    
    var body: some View {
        VStack{
            Text("Welcome, \(name)")
                .font(.system(size: 40))
                .fontWeight(.black)
            HStack{
                Text("Subscriptions")
                    .font(.system(size: 30))
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
                    if SubItem.isImportant {
                        Text("‼️" + SubItem.title)
                    } else {
                        Text(SubItem.title)
                    }
                }
                .onDelete(perform: deleteToDo)
            }
            .listStyle(.plain) 
        }
        if showNewSub {
            NewSubscriptionView(showNewSub: $showNewSub, subItem: SubItem(title: "", isImportant: false))
        
        }
    }
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let subItem = Subscriptions[offset]
            modelContext.delete(subItem)
        }
    }
}

#Preview {
    SubscriptionView(name: "Khira", email: "khira@gmail.com", password: "1234")
        .modelContainer(for: SubItem.self, inMemory: true)
}
