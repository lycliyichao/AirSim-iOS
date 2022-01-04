//
//  RouteCardListModel.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/31.
//

public struct RouteCardListModel{
    public let routeName: String
    public let routeNum: Int
    public let userRouteGroupID: Int
    
    public init(routeName: String,
                routeNum: Int,
                userRouteGroupID: Int){
        self.routeName = routeName
        self.routeNum = routeNum
        self.userRouteGroupID = userRouteGroupID
    }
}

/*
let routeCardListItems : [RouteCardListModel] = [
    RouteCardListModel(routeName: "China", routeNum: 28),
    RouteCardListModel(routeName: "USA", routeNum: 288),
    RouteCardListModel(routeName: "Japan", routeNum: 14),
]
 */
