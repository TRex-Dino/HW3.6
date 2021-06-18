//
//  ContentView.swift
//  HW3.6
//
//  Created by Dmitry on 17.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
