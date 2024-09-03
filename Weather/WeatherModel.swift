//
//  WeatherModel.swift
//  Weather
//
//  Created by naresh chouhan on 9/2/24.
//

import Foundation
struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let icon: String

    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }

    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "cloud"
        }
    }
    
// get weather icon
    var iconUrl: URL? {
        return URL(string: "https://openweathermap.org/img/wn/\(icon)@2x.png")
    }
}
