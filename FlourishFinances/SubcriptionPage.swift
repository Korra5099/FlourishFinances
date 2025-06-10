//
//  SubcriptionPage.swift
//  FlourishFinances
//
//  Created by Scholar on 6/10/25.
//

import SwiftUI

struct SubcriptionPage: View {
    @State private var name = ""
    var body: some View {

        
        Text("Welcome, \(name)!")
            .font(.title)
            .fontWeight(.heavy)
        
        Spacer().frame(height:700)
    }
}

#Preview {
    SubcriptionPage()
}
