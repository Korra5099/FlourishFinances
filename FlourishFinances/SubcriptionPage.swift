//
//  SubcriptionPage.swift
//  FlourishFinances
//
//  Created by Scholar on 6/10/25.
//

import SwiftUI

struct SubcriptionPage: View {
    var name: String
    var email: String
    var password: String
    
    var body: some View {

        Text("Welcome, \(name)!")
            .font(.title)
            .fontWeight(.heavy)
        Text("Current Subscriptions:")
            .fontWeight(.medium)
        Spacer().frame(height:700)
        GroupBox(label: Label) {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
        }
    
    }
}

#Preview {
    SubcriptionPage(name: "Khira", email: "khira@gmail.com", password: "password123")
}
