//
//  LoginPage.swift
//  FlourishFinances
//
//  Created by Scholar on 6/10/25.
//

import SwiftUI

struct LoginPage: View{
    @State private var name = ""
    var body: some View {
        Image("Image")
        .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
            .imageScale(.large)
            .clipShape(Circle())
            Spacer()
        TextField ("Enter Name Here", text: $name)
            .padding(.leading, 12.0)
            .frame(height: nil)
            .multilineTextAlignment(.center)
            .font(.title)
        Spacer().frame(height: 300)
            NavigationLink( destination: ContentView()) {
                Text("Thank You")
                
            }
        }
        
            
    }


#Preview {
    LoginPage()
}
