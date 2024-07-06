//
//  ExctractedView.swift
//  SwiftUI-Weather
//
//  Created by Шамиль Каммаев on 27/04/2024.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors:
                        [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
                       .ignoresSafeArea(.all)
    }
}
