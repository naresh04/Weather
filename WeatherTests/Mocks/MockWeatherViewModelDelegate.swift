//
//  MockWeatherViewModelDelegate.swift
//  WeatherTests
//
//  Created by naresh chouhan on 8/24/24.
//

import XCTest
import CoreLocation
@testable import Weather

class MockWeatherViewModelDelegate: NSObject, WeatherViewModelDelegate {
    var didUpdateWeatherCalled = false
    var didFailWithErrorCalled = false
    var weather: WeatherModel?
    var error: WeatherError?
    
    func didUpdateWeather(_ viewModel: WeatherViewModel, weather: WeatherModel) {
        didUpdateWeatherCalled = true
        self.weather = weather
    }
    
    func didFailWithError(error: WeatherError) {
        didFailWithErrorCalled = true
        self.error = error
    }
}

