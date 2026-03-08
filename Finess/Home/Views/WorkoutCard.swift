//
//  WorkoutCard.swift
//  Finess
//
//  Created by Yi Mondol on 3/8/26.
//

import SwiftUI

struct WorkoutCard: View {
    @State var workout: Workout
    
    
    var body: some View {
        HStack {
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            VStack(spacing: 16){
                HStack {
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(workout.duration)
                        
                        
                }//HStack
                HStack {
                    Text(workout.date)
                    Spacer()
                    Text(workout.calories)
                        
                }//HStack
            }//VStack
        }//HStack
        .padding(.horizontal)
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, title: "Running", image: "figure.run", tintColor: .green, duration: "30 mins", date: "Aug 8", calories: "10,5467"))
}
