//
//  CLLocationCoordinate2DExtension.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/23.
//

import CoreLocation

extension CLLocationCoordinate2D {
    
    static var inifiniteLoop: CLLocationCoordinate2D = {
        CLLocationCoordinate2D(latitude: 37.331836, longitude: -122.029604)
    }()
    
    static var applePark: CLLocationCoordinate2D = {
        CLLocationCoordinate2D(latitude: 37.334780, longitude: -122.009073)
    }()
    
    static var PVG: CLLocationCoordinate2D = {
        CLLocationCoordinate2D(latitude: 31.143333, longitude: 121.805277)
    }()
    
}
