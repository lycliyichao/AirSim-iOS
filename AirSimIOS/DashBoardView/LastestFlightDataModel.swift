//
//  LastestFlightDataModel.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2022/1/4.
//

import SwiftUI

public struct LastestFlightDataModel{
    public let flightNum: String // or Int
    public var startStation: String
    public var destination: String
    public let flightTime: String // or Date
    
    public init(flightNum: String,
                startStation: String,
                destination: String,
                flightTime: String){
        self.flightNum = flightNum
        self.startStation = startStation
        self.destination = destination
        self.flightTime = flightTime
    }
}

// Test Data
var lastestFlightData: [LastestFlightDataModel] = [
    LastestFlightDataModel(flightNum: "1001", startStation: "SIN", destination: "HKG", flightTime: "12:38(UTC)"),
    LastestFlightDataModel(flightNum: "1003", startStation: "SIN", destination: "CKG", flightTime: "12:40(UTC)"),
    LastestFlightDataModel(flightNum: "1005", startStation: "SIN", destination: "TPE", flightTime: "12:45(UTC)"),
    LastestFlightDataModel(flightNum: "1007", startStation: "SIN", destination: "KUL", flightTime: "12:55(UTC)"),
    LastestFlightDataModel(flightNum: "1009", startStation: "SIN", destination: "BKK", flightTime: "13:00(UTC)")
]

