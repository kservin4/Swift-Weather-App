//
//  WeatherRow.swift
//  FinalProject
//
//  Created by user270281 on 5/8/25.
//

import SwiftUI

struct WeatherRow: View {
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(logo)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .cornerRadius(50)

            
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.caption)
                
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
    }
}

#Preview {
    WeatherRow(logo: "thermometer", name: "Feels like", value: "11°")
}
