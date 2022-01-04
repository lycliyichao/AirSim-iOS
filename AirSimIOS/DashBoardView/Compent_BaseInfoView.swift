//
//  Compent_BaseInfoView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/27.
//

import SwiftUI

struct ScrollDashBoardBaseInfoView: View {
    let GradeStarNum: Int
    let CashNum: String
    let BaseID: Int
    let FleetNum: Int
    let StaffNum: Int
    
    var body: some View {
        VStack{
            HStack {
                Text("Grade")
                    .padding(.horizontal)
                
                Spacer()
                
                ScrollDashBoardGradeStarView(StarNum: GradeStarNum)
            }
            .padding(.bottom, 1)
            .padding(.vertical, 0)
                
            HStack {
                Text("Cash")
                    //.font(.headline)
                    .padding(.horizontal)
                    
                Spacer()
                    
                Text("$ "+CashNum)
                    .padding(.horizontal)
            }
            .padding(.bottom, 1)
            .padding(.vertical, 0)
                
            HStack{
                Text("Base")
                    .padding(.horizontal)
                
                Spacer()
                
                NavigationLink(destination: HomeBaseView()){
                    Text("Singapore"+"(SIN)")
                        .padding(.horizontal)
                }
                .navigationTitle(NSLocalizedString("DashBoard", comment: ""))
            }
            .padding(.bottom, 1)
            .padding(.vertical, 0)
            
            HStack{
                Text("Fleet1")
                    .padding(.horizontal)
                
                Spacer()
                
                Text(String(FleetNum))
                    .padding(.horizontal)
            }
            .padding(.bottom, 1)
            .padding(.vertical, 0)
            
            HStack{
                Text("Staff")
                    .padding(.horizontal)
                
                Spacer()
                
                Text(String(StaffNum))
                    .padding(.horizontal)
            }
            .padding(.bottom, 1)
            .padding(.vertical, 0)
        }
    }
}

struct Compent_BaseInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollDashBoardBaseInfoView(GradeStarNum: 3, CashNum: "800,000,000", BaseID: 0, FleetNum: 30, StaffNum: 2258)
    }
}
