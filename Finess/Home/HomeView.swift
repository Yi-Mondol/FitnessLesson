//
//  HomeView.swift
//  Finess
//
//  Created by Yi Mondol on 3/7/26.
//

import SwiftUI



struct HomeView: View {
    
    var mockActivites: [Activity] = [
        Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,812"),
        Activity(id: 1, title: "Today steps", subtitle: "Goal 1000", image: "figure.walk", tintColor: .red, amount: "812"),
       Activity(id: 2, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9,812"),
     Activity(id: 3, title: "Today steps", subtitle: "Goal 50,000", image: "figure.run", tintColor: .purple, amount: "104,812")
    
    ]
    
    var mockWorkouts: [Workout] = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "30 mins", date: "Aug 1", calories: "19,843"),
        Workout(id: 1, title: "Strength Training", image: "figure.run", tintColor: .red, duration: "30 mins", date: "Aug 3", calories: "523"),
        Workout(id: 2, title: "Walk", image: "figure.walk", tintColor: .purple, duration: "30 mins", date: "Aug 5", calories: "10,5467"),
        Workout(id: 3, title: "Running", image: "figure.run", tintColor: .cyan, duration: "30 mins", date: "Aug 9", calories: "10,000")
    ]
    
    
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    HStack {
                        Spacer()
                        VStack {
                            VStack (alignment: .leading, spacing: 8){
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.red)
                                Text("123 kcal")
                                    .bold()
                            }//VStack
                            .padding(.bottom)
                            VStack (alignment: .leading, spacing: 8){
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.green)
                                Text("52 mins")
                                    .bold()
                            }//VStack
                            .padding(.bottom)
                            VStack (alignment: .leading, spacing: 8){
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.blue)
                                Text("8 hours")
                                    .bold()
                            }//VStack
                        }//VStack
                        Spacer()
                        ZStack {
                            ProgressCircleView(progress: $calories, goal: 600, color: .red)
                            ProgressCircleView(progress: $active, goal: 60, color: .green)
                                .padding(.all, 20)
                            
                            ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                                .padding(.all, 40)
                        }//ZStack
                        .padding(.horizontal)
                        Spacer()
                    }//HStack
                    .padding()
                    HStack {
                        Text("Fitness Activity")
                            .font(.title2)
                        Spacer()
                        Button{
                            print("show more")
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                            
                        }
                    }//HStack
                    .padding(.horizontal)
                    LazyVGrid (columns: Array(repeating: GridItem(spacing: 20), count: 2)){
                        ForEach(mockActivites, id: \.id){ activity in
                            ActivityCard(activity: activity)
                            
                        }
                    }//LazyVGrid
                    .padding(.horizontal)
                    HStack {
                        Text("Recent Workout")
                            .font(.title2)
                        Spacer()
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                        
                    }//HStack
                    .padding(.horizontal)
                    LazyVStack {
                        ForEach(mockWorkouts, id: \.id){ workout in
                            WorkoutCard(workout: workout)
                            
                        }
                    }//LazyVStack
                    .padding(.horizontal)
                    .padding(.top)
                    
                }//VStack
                .padding(.bottom)
            }
        }//ScrollView
    }
}

#Preview {
    HomeView()
}
/*

*/
