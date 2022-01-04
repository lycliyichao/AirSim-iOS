//
//  Compent_OperationRouterCarsListView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/30.
//

import SwiftUI

struct OperationRouteCardListView :View {
    public let routeCardListData: [RouteCardListModel]
    
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                //First DashBoardView
                NavigationLink(destination: RouteDashBoardView(),
                                label: {
                    OperationDashBoardCardView(TypeName: "Route", TotalNum: 80)
                        .dynamicTypeSize(.medium) ///need iOS15 support
                })
                    .padding(.horizontal, 6)
                    .padding(.vertical, 8)
                
                //FleetCardView Part
                ForEach(0..<routeCardListData.count){index in
                    // add base Navigation
                    NavigationLink(destination: RouteDashBoardView(), label: {
                        ZStack {
                            //Lower Level CardView
                            OperationBasicCardView(BorderColor: Color(UIColor.darkGray))
                                .padding(.horizontal, 5)
                                .padding(.vertical, 8)
                                .dynamicTypeSize(.medium)///need iOS15 support
                            
                            //Upper Level Show-Text
                            VStack {
                                Text(routeCardListData[index].routeName)
                                    .font(.caption).bold()
                                    .foregroundColor(.primary)
                                    .padding(.vertical, 1)
                                    .frame(maxWidth: OperationCardViewData.cardViewWidth - 4, alignment: .center)
                                    .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                            radius: 1.8,
                                            x: 0.6,
                                            y: 0.6)
                                
                                Text(String(routeCardListData[index].routeNum))
                                    .font(.subheadline).bold()
                                    .foregroundColor(.primary)
                                    .frame(alignment: .bottom)
                                    .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                            radius: 1.2,
                                            x: 0.6,
                                            y: 0.6)
                                
                                Text("Routers")
                                    .font(.footnote)
                                    .fontWeight(.light)
                                    .foregroundColor(.primary)
                                    .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                            radius: 1.2,
                                            x: 0.6,
                                            y: 0.6)
                            }
                        }
                        .dynamicTypeSize(.medium)///need iOS15 support
                    })
                }
            }
        }
    }
}

let routeCardListItems : [RouteCardListModel] = [
    RouteCardListModel(routeName: "China", routeNum: 28, userRouteGroupID: 1),
    RouteCardListModel(routeName: "USA", routeNum: 288, userRouteGroupID: 2),
    RouteCardListModel(routeName: "Japan", routeNum: 14, userRouteGroupID: 3),
]

struct Compent_OperationRouteCarsListView_Previews: PreviewProvider {
    static var previews: some View {
        OperationRouteCardListView(routeCardListData: routeCardListItems)
    }
}
