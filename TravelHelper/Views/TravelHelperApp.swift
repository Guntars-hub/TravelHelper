//
//  TravelHelperApp.swift
//  TravelHelper
//
//  Created by guntars.grants on 22/02/2021.
//
// Main View for app with all Views

import SwiftUI

@main
struct TravelHelperApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView{
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView {
                    ContentView(location: locations.primary)
                        .background(Color.gray.opacity(0.2))
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView{
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
