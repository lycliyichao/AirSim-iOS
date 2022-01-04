//
//  Compent_OperationFleetCardListView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/30.
//

import SwiftUI

struct OperationFleetCardListView: View {
    public let fleetCardListData: [FleetCardListModel]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                //First DashBoardView
                NavigationLink(destination: FleetDashBoardView(),
                                label: {
                    //First Button to DashBoard
                    OperationDashBoardCardView(TypeName: "Fleet2", TotalNum: 32)
                        .dynamicTypeSize(.medium) ///need iOS15 support
                })
                    .padding(.horizontal, 6)
                    .padding(.vertical, 8)
                
                //FleetCardView Part
                ForEach(0..<fleetCardListData.count){index in
                    // add base Navigation
                    NavigationLink(destination: FleetDashBoardView(), label: {
                        ZStack {
                            //Lower Level CardView
                            OperationBasicCardView(BorderColor: Color(UIColor.darkGray))
                                .padding(.horizontal, 5)
                                .padding(.vertical, 8)
                                .dynamicTypeSize(.medium)///need iOS15 support
                            
                            //Upper Level Show-Text
                            VStack {
                                Text(fleetCardListData[index].fleetName)
                                    .font(.caption).bold()
                                    .foregroundColor(.primary)
                                    .padding(.vertical, 1)
                                    .frame(maxWidth: OperationCardViewData.cardViewWidth - 4, alignment: .center)
                                    .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                            radius: 1.8,
                                            x: 0.6,
                                            y: 0.6)
                                
                                Text(String(fleetCardListData[index].aircarftNum))
                                    .font(.subheadline).bold()
                                    .foregroundColor(.primary)
                                    .frame(alignment: .bottom)
                                    .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                            radius: 1.2,
                                            x: 0.6,
                                            y: 0.6)
                                
                                Text("Aircrafts")
                                    .font(.footnote)
                                    .fontWeight(.light)
                                    .foregroundColor(.primary)
                                    .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                                            radius: 1.2,
                                            x: 0.6,
                                            y: 0.6)
                            }
                        }
                        .dynamicTypeSize(.medium) ///need iOS15 support
                    })
                }
            }
        }
    }
}

let fleetCardListItems : [FleetCardListModel] = [
    FleetCardListModel(fleetName: "A320Team", aircarftNum: 80, userFleetGroupID: 1),
    FleetCardListModel(fleetName: "A330Team", aircarftNum: 20, userFleetGroupID: 2),
    FleetCardListModel(fleetName: "A350Team", aircarftNum: 10, userFleetGroupID: 3),
    FleetCardListModel(fleetName: "A380Team", aircarftNum: 5, userFleetGroupID: 4),
    FleetCardListModel(fleetName: "B737Team", aircarftNum: 60, userFleetGroupID: 5)
]

struct Compent_OperationFleetCardListView_Previews: PreviewProvider {
    static var previews: some View {
        OperationFleetCardListView(fleetCardListData: fleetCardListItems)
    }
}
