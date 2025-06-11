//
//  SubcriptionPage.swift
//  FlourishFinances
//
//  Created by Scholar on 6/10/25.
//

import SwiftUI

struct SubscriptionPage: View {
    var name: String
    var email: String
    var password: String

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Subscription Page")
                 .font(.system(size: 40))
                 .fontWeight(.black)
Spacer()
            Button {

            } label: {
                Text("+")
                    .font(.title)
                    .fontWeight(.bold)
            }
                
                .padding(.top, 5)
            }
        }

    }



    #Preview {


    }
        
 
    }


#Preview {
    SubscriptionPage(name: "Khira", email: "khira@example.com", password: "password123")
}
