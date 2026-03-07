//
//  ActivityCard.swift
//  Finess
//
//  Created by Yi Mondol on 3/7/26.
//

import SwiftUI

struct ActivityCard: View {
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            VStack {
                HStack(alignment: .top){
                    VStack (alignment: .leading, spacing: 8){
                        Text("Today Steps")
                        Text("Goal 10,000")
                    }//VStack
                    Spacer()
                    Image(systemName: "figure.walk")
                        .foregroundColor(.green)
                    
                }//HStack
                Text("6, 121")
                    .font(.title)
                    .bold()
                    .padding()
            }//VStack
            .padding()
        }//ZStack
    }
}

#Preview {
    ActivityCard()
}
