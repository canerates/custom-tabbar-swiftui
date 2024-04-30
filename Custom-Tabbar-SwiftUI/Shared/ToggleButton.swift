//
//  ToggleButton.swift
//  Custom-Tabbar-SwiftUI
//
//  Created by Caner Ates on 30.04.2024.
//

import SwiftUI

struct ToggleButton: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        VStack {
            Toggle("\(isOn ? "Hide" : "Show") Tabbar", isOn: $isOn)
                .toggleStyle(.switch)
                .frame(width: 200)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer()
        }
    }
}
