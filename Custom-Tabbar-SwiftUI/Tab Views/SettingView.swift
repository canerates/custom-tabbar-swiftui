//
//  SettingView.swift
//  Custom-Tabbar-SwiftUI
//
//  Created by Caner Ates on 30.04.2024.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        ZStack {
            Text("Setting View")
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}

#Preview {
    SettingView()
}
