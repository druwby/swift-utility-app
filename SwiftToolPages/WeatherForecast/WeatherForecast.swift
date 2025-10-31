//
//  WeatherForecast.swift
//  ChatPrototype
//
//  Created by Drew Butler on 10/6/25.
//

import SwiftUI

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let cond: String
    
    var body: some View {
        VStack {
            Text(day)
                .bold()
                .lineLimit(1)
                .fontWidth(.condensed)
                .font(.headline)
                switch cond.uppercased() {
                case "SUNNY":
                    Image(systemName: "sun.max.fill")
                        .foregroundStyle(Color.yellow)
                        .font(Font.largeTitle)
                        .frame(width:50, height:50)

                case "RAINY":
                    Image(systemName: "cloud.heavyrain.fill")
                        .foregroundStyle(Color.blue)
                        .font(Font.largeTitle)
                        .frame(width:50, height:50)
                case "CLOUDY":
                    Image(systemName: "cloud.fill")
                        .foregroundStyle(Color.gray)
                        .font(Font.largeTitle)
                        .frame(width:50, height:50)

                default:
                    Image(systemName: "questionmark.square.fill")
                        .foregroundStyle(Color.red)
                        .font(Font.largeTitle)
                        .frame(width:50, height:50)

                }
            Text("High: \(high)º")
                .lineLimit(1)
                .fontWidth(.condensed)
                .font(.caption)
                .foregroundStyle(Color.primary)
            Text("Low: \(low)º")
                .foregroundStyle(Color.secondary)
                .lineLimit(1)
                .fontWidth(.condensed)
                .font(.caption)
            
        }
        .padding(5)
        .background(Color(red: 0, green: 0.8, blue: 1), in: RoundedRectangle(cornerRadius: 5))
        .shadow(radius: 5)

    }
}

struct WeatherForecast: View {
    var body: some View {
        VStack{
            Text("5 Day Weather Forecast")
                .font(Font.headline)
            HStack{
                DayForecast(day:"Mon", high:86, low:57, cond:"sunny")
                
                DayForecast(day:"Tues", high:78, low:52, cond:"rainy")
                
                DayForecast(day:"Wed", high:75, low:55, cond:"cloudy")
                
                DayForecast(day:"Thurs", high:88, low:53, cond:"")
                
                DayForecast(day:"Fri", high:68, low:36, cond:"rainy")
            }
        }
    }
}

#Preview {
    WeatherForecast()
}
