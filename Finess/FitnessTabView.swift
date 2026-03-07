//
//  FitnessTableView.swift
//  Finess
//
//  Created by Yi Mondol on 3/7/26.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        TabView (selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("ផ្ទះ")
                }
            HistoricDataView()
                .tag( "Historic Data View")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("ក្រាហ្វិក")
                }
        }//TabView
    }
}

#Preview {
    FitnessTabView()
}
