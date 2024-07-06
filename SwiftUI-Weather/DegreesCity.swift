//
//  DegreesRow.swift
//  SwiftUI-Weather
//
//  Created by Шамиль Каммаев on 27/04/2024.
//

import SwiftUI

struct DegreesCity: View {
    var body: some View {
        VStack {
            Text("Cupertino, CA").font(.system(size: 32, weight: .medium, design: .default))
                .foregroundStyle(.white)
                .padding()
            VStack(spacing: 8) {
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180, alignment: .center)
                
                Text("76°").font(.system(size: 70, weight: .medium))
                    .foregroundStyle(.white)
                
            }            
        }
    }
}

#Preview {
    DegreesCity()
}
