//
//  CustomTabbar.swift
//  Custom-Tabbar-SwiftUI
//
//  Created by Caner Ates on 30.04.2024.
//

import SwiftUI

enum Tab: Int, CaseIterable {
    case home = 0
    case library
    case setting
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .library:
            return "Library"
        case .setting:
            return "Setting"
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return "house.fill"
        case .library:
            return "books.vertical.fill"
        case .setting:
            return "gearshape.fill"
        }
    }
}

struct CustomTabbar: View {
    @Binding var selectedTab: Int
    @Binding var isVisible: Bool
    
    var body: some View {
        GeometryReader { geometry in
            if isVisible {
                VStack {
                    Spacer()
                     
                    HStack {
                        Spacer()
                        ForEach(Tab.allCases, id: \.self) { item in
                            TabBarButton(isActive: (selectedTab == item.rawValue),
                                         iconName: item.iconName,
                                         title: item.title) {
                                withAnimation {
                                    selectedTab = item.rawValue
                                }
                            }
                            Spacer()
                        }
                    }
                    .frame(height: 70)
                    .background(.black)
                    .cornerRadius(15)
                    .padding(.horizontal, geometry.size.width / 15)
                    
                }
            }
        }
    }
}
