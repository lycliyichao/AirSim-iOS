//
//  SevenContinents.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/28.
//

import SwiftUI

public struct SevenContinentsModel {
    public let name: String
    public let stations: Int
    
    public init(name: String,
                stations:Int){
        self.name = name
        self.stations = stations
    }
}
