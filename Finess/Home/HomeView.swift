//
//  HomeView.swift
//  Finess
//
//  Created by Yi Mondol on 3/7/26.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var body: some View {
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
                    ActivityCard()
                    ActivityCard()
                }//LazyVGrid
               
                
            }//VStack
        }//ScrollView
    }
}

#Preview {
    HomeView()
}
