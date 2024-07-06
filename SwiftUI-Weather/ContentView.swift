//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Шамиль Каммаев on 22/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    
    var body: some View {
        ZStack() {
            BackgroundView(isNight: $isNight,
                           topColor: isNight ? .black : .blue,
                             bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack {
                DegreesCity(cityName: "Cupertino, CA", imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", degrees: 76)
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", degrees: 74, isNight: isNight)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill",   degrees: 88, isNight: isNight)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow",      degrees: 55, isNight: isNight)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sunset.fill",    degrees: 60, isNight: isNight)
                    WeatherDayView(dayOfWeek: "SUN", imageName: "snow",           degrees: 25, isNight: isNight)
                    
                }
                Spacer()
                
                WeatherButton(isNight: $isNight, title: "Change Day Time",
                              backgroundColor: .white,
                              textColor: .blue)
                Spacer()
            }
        }
    }
}


#Preview {
    ContentView()
}
