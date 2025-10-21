//
//  WeatherView.swift
//  FinalProject
//
//  Created by user270281 on 5/7/25.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    var body: some View {
        ZStack(alignment: .leading){
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                        .bold().font(.title)
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                
                VStack {
                    HStack {
                        VStack(spacing: 20) {
                            Image("cloudy")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            Text(weather.weather[0].main)
                        }
                        .frame(width: 150, alignment: .leading)
                        
                        Spacer()
                        
                        Text(weather.main.feelsLike.roundDouble() + "°")
                            .font(.system(size: 100))
                            .fontWeight(.bold)
                            .padding()
                    }
                    Spacer()
                        .frame(height: 80)
                    
                    AsyncImage(url:URL(string: "https://as1.ftcdn.net/jpg/04/82/96/52/1000_F_482965210_VjJOGjhLkCBHAHawr6ETCdSeiDXs7qW3.jpg")) { image in image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350)
                    } placeholder: {
                        ProgressView()
                    }
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Spacer()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Weather now")
                        .bold().padding(.bottom)
                    
                    HStack {
                        WeatherRow(logo: "temperature", name: "Min Temp", value: weather.main.tempMin.roundDouble() + "°")
                        Spacer()
                        WeatherRow(logo: "temperature", name: "Max Temp", value: weather.main.tempMax.roundDouble() + "°")
                    }
                    HStack {
                        WeatherRow(logo: "windy", name: "Wind Speed", value: weather.wind.speed.roundDouble() + "m/s")
                        Spacer()
                        WeatherRow(logo: "drop", name: "Humidity", value: weather.main.humidity.roundDouble() + "%")
                    }                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 20)
                .foregroundColor(Color(hue: 0.912, saturation: 0.176, brightness: 0.96))
                .background(.white)
                .cornerRadius(20, corners: [.topLeft, .topRight])
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.912, saturation: 0.176, brightness: 0.96))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    WeatherView(weather: previewWeather)
}
