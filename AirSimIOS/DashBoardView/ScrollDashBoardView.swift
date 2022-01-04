//
//  ScrollDashBoardView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/25.
//

import SwiftUI
import Model3DView
import SwiftUICharts
import FancyScrollView

struct ScrollDashBoardRateView: View {
    var body: some View {
        VStack{

            HStack{
                Text("Transported Passengers")
                    .padding(.horizontal)
                
                Spacer(minLength: 0)
                
                Text("271365")
                    .padding(.horizontal)
            }
            .padding(.bottom, 1)
            .padding(.vertical, 0)
            
        
            HStack{
                Text("Seat Load Factor(SLF)")
                    .padding(.horizontal)
                
                Spacer(minLength: 0)
                
                Text("88.88%")
                    .padding(.horizontal)
            }
            .padding(.bottom, 1)
            .padding(.vertical, 0)
            
         
            HStack{
                Text("Transported Cargo")
                    .padding(.horizontal)
                
                Spacer(minLength: 0)
                
                Text("79426"+" CU")
                    .padding(.horizontal)
            }
            .padding(.bottom, 1)
            .padding(.vertical, 0)
            
         
            HStack{
                Text("Cargo Load Factor(CLF)")

                    .padding(.horizontal)
                
                Spacer(minLength: 0)
                
                Text("86.66%")
                    .padding(.horizontal)
            }
            .padding(.bottom, 1)
            .padding(.vertical, 0)
            
        }
    }
}

//内容显示界面
struct ScrollDashBoardContentView: View {
    
    var body: some View {
        VStack {
            //基础信息部分
            ///GradeStartNum: 综合评级分数
            ///CashNum: 持有的货币数量
            ///BaseID: 所在基地的ID（后续可能取消此数值）
            ///FleetNum: 机队中的飞机数量
            ///StaffNum: 员工总人数
            ScrollDashBoardBaseInfoView(GradeStarNum: 4, CashNum: "800,800,800", BaseID: 0, FleetNum: 31, StaffNum: 2260)
            
            Divider()
            
            ScrollDashBoardRateView()
            
            Divider()
            
            //市占率饼图
            /*
            BasePieChartView(pieChartName: "Market Share",pieChartNameFont: .headline,pieChartViewWidth:(screenWidth/2), pieChartViewHeight: (screenWidth * 0.2), pieChartDataList: pieChartDataItems, showPieChartParamsNum: 5)
             */
            
            

            VStack{
                HStack{
                    Text("Lastest Flight")
                        .font(.headline)
                        .padding(.horizontal)
                        .padding(.vertical, 0.2)
                    Spacer(minLength: 0)
                }
                
                Group{
                    // change to use VStack
                    HStack{
                        VStack(alignment: .leading){
                            ForEach(0..<lastestFlightData.count){index in
                                Text("SAA "+lastestFlightData[index].flightNum)
                                    .font(.subheadline)
                            }
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            ForEach(0..<lastestFlightData.count){index in
                                Text(lastestFlightData[index].startStation)
                                    .font(.subheadline)
                            }
                        }
                        
                        VStack(alignment: .center){
                            ForEach(0..<lastestFlightData.count){index in
                                Text(" - ")
                                    .font(.subheadline)
                            }
                        }
                        
                        VStack(alignment: .leading){
                            ForEach(0..<lastestFlightData.count){index in
                                Text(lastestFlightData[index].destination)
                                    .font(.subheadline)
                            }
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            ForEach(0..<lastestFlightData.count){index in
                                Text(lastestFlightData[index].flightTime)
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            
            VStack{
                HStack {
                    Text("Upcoming Flight")
                        .font(.headline)
                        .padding(.horizontal)
                        .padding(.vertical, 0.2)
                    
                    Spacer(minLength: 0)
                }
                
                Group{
                    // change to use VStack
                    HStack{
                        VStack(alignment: .leading){
                            ForEach(0..<upcomingFlightData.count){index in
                                Text("SAA "+upcomingFlightData[index].flightNum)
                                    .font(.subheadline)
                            }
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            ForEach(0..<upcomingFlightData.count){index in
                                Text(upcomingFlightData[index].startStation)
                                    .font(.subheadline)
                            }
                        }
                        
                        VStack(alignment: .center){
                            ForEach(0..<upcomingFlightData.count){index in
                                Text(" - ")
                                    .font(.subheadline)
                            }
                        }
                        
                        VStack(alignment: .leading){
                            ForEach(0..<upcomingFlightData.count){index in
                                Text(upcomingFlightData[index].destination)
                                    .font(.subheadline)
                            }
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            ForEach(0..<upcomingFlightData.count){index in
                                Text(upcomingFlightData[index].flightTime)
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            .padding(.vertical, 2)
            

            
        }
    }
}

struct ScrollDashBoardView: View {
    var body: some View {
        FancyScrollView(title: "NewAlien Air",
                        titleColor: Color.gray,
                        headerHeight: screenWidth * 0.95,
                        isManualSetHeaderBackButtonOff: true,
                        scrollUpHeaderBehavior: .parallax,
                        scrollDownHeaderBehavior: .offset,
                        header: {ScrollDashBoardEarthView()},
                        content: {ScrollDashBoardContentView()}
        )
    }
}

struct ScrollDashBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollDashBoardView()
    }
}
