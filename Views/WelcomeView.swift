//
//  WelcomeView.swift
//  FinalProject
//
//  Created by user270281 on 5/5/25.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Image("wind")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Please share your current location to get the weather in your area")
                    .padding()

            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundStyle(.white)    
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
