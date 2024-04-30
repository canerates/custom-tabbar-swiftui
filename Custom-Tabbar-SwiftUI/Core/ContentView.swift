//
//  ContentView.swift
//  Custom-Tabbar-SwiftUI
//
//  Created by Caner Ates on 30.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentTab = 0
    @State private var isVisible = true
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            TabView(selection: $currentTab) {
                HomeView()
                    .tag(0)
                
                LibraryView()
                    .tag(1)
                
                SettingView()
                    .tag(2)
            }
            
            ToggleButton(isOn: $isVisible)
                .padding(.top, 20)
                .padding(.horizontal)
            
            CustomTabbar(selectedTab: $currentTab, isVisible: $isVisible)
                .padding(.bottom, 10)
            
        }
    }
}

#Preview {
    ContentView()
}
