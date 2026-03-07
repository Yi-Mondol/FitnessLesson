//
//  ActivityCard.swift
//  Finess
//
//  Created by Yi Mondol on 3/7/26.
//

import SwiftUI


struct Activity {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let amount: String
}

struct ActivityCard: View {
    let activity: Activity
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            VStack {
                HStack(alignment: .top){
                    VStack (alignment: .leading, spacing: 8){
                        Text(activity.title)
                        Text(activity.subtitle)
                            .font(.caption)
                    }//VStack
                    Spacer()
                    Image(systemName: activity.image)
                        .foregroundColor(activity.tintColor)
                    
                }//HStack
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }//VStack
            .padding()
        }//ZStack
    }
}

#Preview {
    ActivityCard(activity: Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"))
}
