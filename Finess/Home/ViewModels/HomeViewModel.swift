//
//  HomeViewModel.swift
//  Finess
//
//  Created by Yi Mondol on 3/8/26.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    var calories: Int = 123
    var active: Int = 52
    var stand: Int = 8
    
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
}

