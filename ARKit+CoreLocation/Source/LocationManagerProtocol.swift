//
//  LocationManagerProtocal.swift
//  ARKit+CoreLocation
//
//  Created by white on 2017/10/30.
//  Copyright © 2017年 Project Dent. All rights reserved.
//

import Foundation
import CoreLocation

public protocol CustomLocationManagerDelegate: class {
    func locationManagerDidUpdateLocation(_ locationManager: CucstomLocationManagerProtocol, location: CLLocation)
    func locationManagerDidUpdateHeading(_
        locationManager: CucstomLocationManagerProtocol, heading: CLLocationDirection, accuracy: CLLocationDirection)
}

public protocol CucstomLocationManagerProtocol {
    
    weak var delegate: CustomLocationManagerDelegate? { set get }
    var currentLocation: CLLocation? { set get }
}
