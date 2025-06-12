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
                    Text ("To Your Wallets New Best Friend!")
                        .font(.title)
                    Spacer().frame(height: 0)
                 NavigationLink(destination: ContentView()) {
                    Text("Next Page")
                         .font(.title)
                         .multilineTextAlignment(.center)
                }
                    Spacer().frame(height: 300)
                }
                
            }
            
        }
    }
    }
    
#Preview {
    LoginPage()
}

