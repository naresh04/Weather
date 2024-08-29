//
//  MockCLLocationManager.swift
//  WeatherTests
//
//  Created by naresh chouhan on 8/28/24.
//

import XCTest
import CoreLocation
@testable import Weather

class MockCLLocationManager: CLLocationManager {
    var requestLocationCalled = false
    
    // Store the delegate internally
    private var _delegate: CLLocationManagerDelegate?
    
    // Override the delegate property
    override var delegate: CLLocationManagerDelegate? {
        get { return _delegate }
        set { _delegate = newValue }
    }
    
    override func requestLocation() {
        requestLocationCalled = true
        
        delegate?.locationManager?(self, didUpdateLocations: [CLLocation(latitude: 37.7749, longitude: -122.4194)])
    }
}


