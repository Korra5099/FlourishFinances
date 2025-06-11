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
        NavigationStack {
            ZStack {
                Color(.green).edgesIgnoringSafeArea(.all)
                VStack {
                    Image("Image")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .imageScale(.large)
                        .clipShape(Circle())
                    Spacer()
                    Text ("💸Welcome💸")
                        .padding(.leading, 12.0)
                        .frame(height: nil)
                        .multilineTextAlignment(.center)
                        .font(.title)
                    Spacer().frame(height: 250)
                 NavigationLink(destination: ContentView()) {
                    Text("Thank You")
                        .font(.title)
                };
                    
                    
                    
                }
            }
            
        }
    }
    }
    
#Preview {
    LoginPage()
}

