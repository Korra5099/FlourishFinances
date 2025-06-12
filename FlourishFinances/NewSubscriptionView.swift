//
//  NewSubscriptionView.swift
//  FlourishFinances
//
//  Created by Scholar on 6/12/25.
//

import SwiftUI
import SwiftData
struct NewSubscriptionView: View {
    @Binding var showNewSub: Bool
    @Bindable var subItem: SubItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack{
            Text("Subscription Name:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter Subscription name...", text: $subItem.title,axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $subItem.isImportant) {
                Text("Is it important?")
            }
            
            Button {
                addSub()
                showNewSub = false
            } label: {
                    Text("Save")
            }
        }
        .padding()
    }
    func addSub() {
        let subThing = SubItem(title: subItem.title, isImportant: subItem.isImportant)
        modelContext.insert(subThing)
    }
}

#Preview {
    NewSubscriptionView(showNewSub: .constant(false), subItem: SubItem(title: "", isImportant: false))
}

