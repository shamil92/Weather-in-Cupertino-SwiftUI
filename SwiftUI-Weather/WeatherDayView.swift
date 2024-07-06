//
//  DayWeatherView.swift
//  SwiftUI-Weather
//
//  Created by Шамиль Каммаев on 27/04/2024.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var degrees: Int
    
    var body: some View {
            VStack {
                Text("\(dayOfWeek)").font(.system(size: 20, weight: .medium))
                .foregroundStyle(.white)
                
                Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .aspectRatio(contentMode: .fill)
                
                Text("\(degrees)°").font(.system(size: 20, weight: .medium))
                .foregroundStyle(.white)
            }
        }
}
