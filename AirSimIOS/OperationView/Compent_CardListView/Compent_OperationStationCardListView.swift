//
//  Compent_OperationStationCardListView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/30.
//

import SwiftUI

struct OperationStationCardListView: View {
    public let stationCardList: [StationCardListModel]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ZStack{
                    NavigationLink(destination: StationDashBoard(),
                                   label: {
                        //First DashBoardView
                        if #available(iOS 15.0, *) {
                            OperationDashBoardCardView(TypeName: "Station", TotalNum: 90)
                                .dynamicTypeSize(.medium) ///need iOS15 support
                        } else {
                            // Fallback on earlier versions
                            OperationDashBoardCardView(TypeName: "Station", TotalNum: 90)
                        }
                    })
                        .padding(.horizontal, 6)
                        .padding(.vertical, 8)
                }
                
                //StationCardView Part
                ForEach(0..<stationCardList.count){index in
                    NavigationLink(destination: StationDashBoard(), label: {
                        // add base Navigation
                        ZStack {
                            OperationBasicCardView(BorderColor: Color(UIColor.darkGray))
                                .padding(.horizontal, 5)
                                .padding(.vertical, 8)
                            
                            VStack {
                                Text(stationCardList[index].areaName)
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(.primary)
                                    .shadow(color: Color(UIColor.darkGray).opacity(0.8),
                                            radius: 1.2,
                                            x: 0.6,
                                            y: 0.6)
                                
                                Spacer().frame(height: 4)
                                
                                HStack(alignment: .bottom, spacing: 1.0) {
                                    Text(String(stationCardList[index].buildStationNum))
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .frame(alignment: .bottom)
                                        .foregroundColor(.primary)
                                        .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                                radius: 1.2,
                                                x: 0.6,
                                                y: 0.6)
                                    
                                    Text("/")
                                        .frame(alignment: .bottom)
                                        .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                                radius: 1.2,
                                                x: 0.6,
                                                y: 0.6)
                                    
                                    Text(String(stationCardList[index].totalStationNum))
                                        .foregroundColor(.primary)
                                        .font(.subheadline)
                                        .fontWeight(.ultraLight)
                                        .frame(alignment: .bottom)
                                        .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                                radius: 1.2,
                                                x: 0.6,
                                                y: 0.6)
                                }
                                
                                Text("Stations")
                                    .font(.system(size: 12))
                                    .foregroundColor(.primary)
                                    .fontWeight(.light)
                                    .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                            radius: 1.2,
                                            x: 0.6,
                                            y: 0.6)
                            }
                        }
                        .dynamicTypeSize(.large) ///need iOS15 support
                    })
                }
            }
        }
    }
}

let stationCardListItem: [StationCardListModel] = [
    StationCardListModel(areaName: "Asia", buildStationNum: 8, totalStationNum: 1024),
    StationCardListModel(areaName: "Eurpa", buildStationNum: 200, totalStationNum: 828),
    StationCardListModel(areaName: "NA", buildStationNum: 10, totalStationNum: 3648),
    StationCardListModel(areaName: "Oce", buildStationNum: 0, totalStationNum: 648),
    StationCardListModel(areaName: "Africa", buildStationNum: 2, totalStationNum: 545),
]

struct Compent_OperationStationCardListView_Previews: PreviewProvider {
    static var previews: some View {
        OperationStationCardListView(stationCardList: stationCardListItem)
    }
}
