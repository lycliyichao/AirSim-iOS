//
//  Compent_FleetManagerDashBoardCardView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/28.
//

import SwiftUI

struct OperationDashBoardCardView: View {
    let TypeName:String
    let TotalNum: Int
    
    var body: some View {
        ZStack{
            if #available(iOS 15.0, *) {
                OperationBasicCardView(BorderColor: .indigo)
            } else {
                // Fallback on earlier versions
                OperationBasicCardView(BorderColor: .blue)
            }
            
            VStack {
                Spacer()
                    .frame(height: 8)
                
                HStack {
                    Spacer()
                        .frame(width : 8)
                    Text("Total")
                        .font(.caption)
                        .fixedSize()
                        .foregroundColor(.gray)
                        .shadow(color: Color(UIColor.lightGray).opacity(0.5),
                                radius: 1.2,
                                x: 0.6,
                                y: 0.6)
                    
                    Spacer()
                }
                Spacer(minLength: 3)
                
                Text(String(TotalNum))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .shadow(color: Color(UIColor.darkGray).opacity(0.8),
                            radius: 1.8,
                            x: 0.8,
                            y: 0.8)
                
                Spacer(minLength: 0)
                
                Text(L(TypeName))
                    .foregroundColor(.primary)
                    .font(.caption2)
                    .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                            radius: 0.8,
                            x: 0.4,
                            y: 0.4)
                
                Text("DashBoard")
                    .foregroundColor(.primary)
                    .font(.caption2)
                    .shadow(color: Color(UIColor.lightGray).opacity(0.8),
                            radius: 0.8,
                            x: 0.4,
                            y: 0.4)
                
                Spacer()
                    .frame(height: 8)
            }
        }
    }
}

struct Compent_FleetManagerDashBoardCardView_Previews: PreviewProvider {
    static var previews: some View {
        OperationDashBoardCardView(TypeName: "Fleet", TotalNum: 20)
    }
}
