//
//  FleetCardListModel.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/31.
//

public struct FleetCardListModel{
    public let fleetName: String
    public let aircarftNum: Int
    public let userFleetGroupID : Int
    
    public init(fleetName: String,
                aircarftNum: Int,
                userFleetGroupID: Int){
        self.fleetName = fleetName
        self.aircarftNum = aircarftNum
        self.userFleetGroupID = userFleetGroupID
    }
}
