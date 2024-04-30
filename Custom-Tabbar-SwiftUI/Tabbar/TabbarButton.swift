//
//  TabbarButton.swift
//  Custom-Tabbar-SwiftUI
//
//  Created by Caner Ates on 30.04.2024.
//

import SwiftUI

struct TabBarButton: View {
    
    let isActive: Bool
    let iconName: String
    let title: String
    let action: () -> Void
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 2) {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 22, height: 22)
                .foregroundColor(isActive ? .white : .gray)
            Text(title)
                .font(.system(size: 13))
                .foregroundColor(isActive ? .white : .gray)
        }
        .onTapGesture {
            if !isActive {
                action()
            }
        }
        
    }
}
