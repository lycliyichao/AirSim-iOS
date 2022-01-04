//
//  UpcomingFlightDataModel.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2022/1/4.
//

import SwiftUI

public struct UpcomingFlightDataModel{
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
var upcomingFlightData: [UpcomingFlightDataModel] = [
    UpcomingFlightDataModel(flightNum: "2001", startStation: "SIN", destination: "HKT", flightTime: "13:20(UTC)"),
    UpcomingFlightDataModel(flightNum: "2003", startStation: "SIN", destination: "USM", flightTime: "13:25(UTC)"),
    UpcomingFlightDataModel(flightNum: "2005", startStation: "SIN", destination: "PEK", flightTime: "13:30(UTC)"),
    UpcomingFlightDataModel(flightNum: "2007", startStation: "SIN", destination: "PVG", flightTime: "13:50(UTC)"),
    UpcomingFlightDataModel(flightNum: "2009", startStation: "SIN", destination: "SHA", flightTime: "14:00(UTC)")
]
