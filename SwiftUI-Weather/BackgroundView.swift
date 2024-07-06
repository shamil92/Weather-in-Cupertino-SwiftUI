//
//  ExctractedView.swift
//  SwiftUI-Weather
//
//  Created by Шамиль Каммаев on 27/04/2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors:
                                            [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .bottomTrailing,
                       endPoint: ignoresSafeArea(.all))
    }
}
