//
//  StationDataModel.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/31.
//

/// user will not have they own "Station Group"
/// this part of station card only work for seven continents
/// or maybe work for Countries in the future
public struct StationCardListModel{
    public let areaName:String
    public let buildStationNum: Int
    public let totalStationNum: Int
    
    public init(areaName: String,
                buildStationNum: Int,
                totalStationNum:Int){
        self.areaName = areaName
        self.buildStationNum = buildStationNum
        self.totalStationNum = totalStationNum
    }
}
