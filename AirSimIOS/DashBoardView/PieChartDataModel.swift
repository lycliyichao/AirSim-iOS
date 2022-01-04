//
//  PieChartDataModel.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/31.
//

import SwiftUI

public struct PieChartDataModel{
    public let name: String
    public let data: Double
    public let isMaster: Bool
    
    public init(name: String,
                data: Double,
                isMaster: Bool){
        self.name = name
        self.data = data
        self.isMaster = isMaster
    }
}
