//
//  HomeView.swift
//  Finess
//
//  Created by Yi Mondol on 3/7/26.
//

import SwiftUI


struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    
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
                                Text("\(viewModel.calories)")
                                    .bold()
                            }//VStack
                            .padding(.bottom)
                            VStack (alignment: .leading, spacing: 8){
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.green)
                                Text("\(viewModel.active)")
                                    .bold()
                            }//VStack
                            .padding(.bottom)
                            VStack (alignment: .leading, spacing: 8){
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.blue)
                                Text("\(viewModel.stand)")
                                    .bold()
                            }//VStack
                        }//VStack
                        Spacer()
                        ZStack {
                            ProgressCircleView(progress: $viewModel.calories, goal: 600, color: .red)
                            ProgressCircleView(progress: $viewModel.active, goal: 60, color: .green)
                                .padding(.all, 20)
                            
                            ProgressCircleView(progress: $viewModel.stand, goal: 12, color: .blue)
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
                        ForEach(viewModel.mockActivites, id: \.id){ activity in
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
                        ForEach(viewModel.mockWorkouts, id: \.id){ workout in
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
