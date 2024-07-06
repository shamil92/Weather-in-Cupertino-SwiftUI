//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Шамиль Каммаев on 27/04/2024.
//

import SwiftUI

struct WeatherButton: View {
    
    @Binding var isNight: Bool
    
    var title: String
    var backgroundColor: Color
    var textColor: Color
        
    var body: some View {
        Button {
            isNight.toggle()
        } label: {
            Text("\(title)")
            .frame(width: 280, height: 50)
            .background(Color.white)
            .foregroundStyle(.blue)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
        }
    }
}
