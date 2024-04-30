//
//  HomeView.swift
//  Custom-Tabbar-SwiftUI
//
//  Created by Caner Ates on 30.04.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Text("Home View")
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    }
}

#Preview {
    HomeView()
}
