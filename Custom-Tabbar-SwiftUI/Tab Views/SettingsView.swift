//
//  SettingsView.swift
//  Custom-Tabbar-SwiftUI
//
//  Created by Caner Ates on 30.04.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Text("Settings View")
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}

#Preview {
    SettingsView()
}
