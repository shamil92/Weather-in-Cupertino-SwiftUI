//
//  DegreesRow.swift
//  SwiftUI-Weather
//
//  Created by Шамиль Каммаев on 27/04/2024.
//

import SwiftUI

struct DegreesCity: View {
    
    var cityName: String
    var imageName: String
    var degrees: Int
    
    var body: some View {
        VStack {
            Text("\(cityName)").font(.system(size: 32, weight: .medium, design: .default))
                .foregroundStyle(.white)
                .padding()
            VStack(spacing: 10) {
                Image(systemName: "\(imageName)")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180, alignment: .center)
                
                Text("\(degrees)°").font(.system(size: 70, weight: .medium))
                    .foregroundStyle(.white)
                
            }.padding(.bottom, 40)
        }
    }
}
