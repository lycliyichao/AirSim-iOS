//
//  OperationMainView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/27.
//

import SwiftUI
import FancyScrollView
import PartialSheet
import SwiftUICharts

struct ScrollOperationContentView: View {
    @State var isShowAddFleetGroup = false
    @State var isShowAddRouterGroup = false
    
    var body: some View {
        VStack{
            //"Station Manager"
            HStack {
                Text(L("Station Manager"))
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.vertical, 2.0)
            
                Spacer(minLength: 0)
            }
            //"Station Manager"
            OperationStationCardListView(stationCardList: stationCardListItem)
            
            
            //"Aircarft Manager"
            HStack{
                Text(L("Aircarft Manager"))
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.vertical, 2)
                
                Spacer(minLength: 0)
                
                Button(action: {
                    isShowAddFleetGroup = true
                }, label: {
                    FuncNewButtonView(buttonText: L("New Fleet"))
                })
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .shadow(color: Color(UIColor.lightGray), radius: 1.2, x: 0.8, y: 0.8)
                    .partialSheet(isPresented: $isShowAddFleetGroup,
                                  content: {SubView_AddFleetGroupView()})
                    
            }
            ///OperationFleetCardListView
            OperationFleetCardListView(fleetCardListData: fleetCardListItems)
            
            //航线管理
            HStack{
                Text("Route Manager")
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.vertical, 2)
                Spacer(minLength: 0)
                
                Button(action: {
                    isShowAddRouterGroup = true
                }, label: {
                    FuncNewButtonView(buttonText: L("New RouteGroup"))
                })
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .shadow(color: Color(UIColor.lightGray), radius: 1.2, x: 0.8, y: 0.8)
                    .partialSheet(isPresented: $isShowAddRouterGroup,
                                  content: {SubView_AddRouteGroupView()})
            }
            //航线列表页面
            OperationRouteCardListView(routeCardListData: routeCardListItems)
            
            
            
            
            
            
            
            
            
        }
    }
}


var demoData: [Double] = [8,23,54,32]
var testData = ChartData([("2018 Q4",8), ("2019 Q1",23),("2019 Q2",54), ("2019 Q3",32)])

struct ScrollOperationView: View {
    var body: some View {
        
        ScrollView(.vertical){
            //添加几个BarChart
            ///测试
           
            /*
            BarChart()
                .data([("Test",48.8),("Test2",51.2)])
                .chartStyle(.init(backgroundColor: .white, foregroundColor: ColorGradient(.red, .orange)))
            
            
            PieChart()
                .data([("2018 Q4",8), ("2019 Q1",23),("2019 Q2",54), ("2019 Q3",32)])
                .chartStyle(ChartStyle(backgroundColor: .white,
                                       foregroundColor: [ColorGradient(.blue,.blue),ColorGradient(.red,.red),ColorGradient(.orange,.orange),ColorGradient(.green,.green)]))
                .frame(width: screenWidth * 0.8, height: screenWidth * 0.8, alignment: .center)
                .padding()
            
            LineChart()
                .data([("2018 Q4",8), ("2019 Q1",23),("2019 Q2",54), ("2019 Q3",32)])
                .chartStyle(ChartStyle(backgroundColor: .primary,
                                       foregroundColor: [ColorGradient(.blue,.blue),ColorGradient(.red,.red),ColorGradient(.orange,.orange),ColorGradient(.green,.green)]))
                .foregroundColor(.primary)
            
            */

            
            //CardListView Part
            ScrollOperationContentView()
        }
        
        Spacer()
    }
}

struct ScrollOperationView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollOperationView()
    }
}
