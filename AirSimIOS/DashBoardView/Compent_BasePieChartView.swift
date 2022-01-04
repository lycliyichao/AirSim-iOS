//
//  Compent_BasePieChartView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/31.
//

import SwiftUI
import SwiftUICharts
import UIKit

let PieChartColorList: [Color] = [
    .blue, .orange, .purple, .pink, .gray, .green, .red
]

struct BasePieChartView: View {
    public var pieChartName: String
    public var pieChartNameFont: Font
    public var pieChartViewWidth: Double = screenWidth * 0.5
    public var pieChartViewHeight: Double = screenHeight * 0.2
    public let pieChartDataList: [PieChartDataModel]
    public let showPieChartParamsNum: Int

    var body: some View {
        //relisted PieChart Data
        let relistedPieChartData: [PieChartDataModel] = BasePieChartView.relistPieChartDataList(pieChartDataList, showPieChartParamsNum)
        
        let relistedChartData:[Double] = getRelistedPieChartData(relistedPieChartData)
        let relistedChartName:[String] = getRelistedPieChartName(relistedPieChartData)
        
        VStack {
            //PieChart Title
            //HStack {
            //    Text(pieChartName)
            //        .font(pieChartNameFont)
            //        .bold()
            //        .padding(.horizontal, 18)
            //    Spacer(minLength: 0)
            //}
            //.padding(.vertical, 2)
            
            //PieChart ///Color Shows Just For Function! Not For Final
            HStack{
                /*
                PieChart()
                    .data(relistedChartData)
                    .chartStyle(ChartStyle(backgroundColor: .clear,
                                       foregroundColor: [ColorGradient(PieChartColorList[1]),ColorGradient(PieChartColorList[2]),ColorGradient(PieChartColorList[3]),ColorGradient(PieChartColorList[4]),ColorGradient(PieChartColorList[5])
                                                        ]))
                    .frame(width: pieChartViewWidth/2, alignment: .leading)
                    .padding()
                    //.background(.green)
                 */
                
                LineChart()
                    .data(relistedChartData)
                    .chartStyle(ChartStyle(backgroundColor: .clear,
                                       foregroundColor: [ColorGradient(PieChartColorList[1]),ColorGradient(PieChartColorList[2]),ColorGradient(PieChartColorList[3]),ColorGradient(PieChartColorList[4]),ColorGradient(PieChartColorList[5])
                                                        ]))
                    .frame(width: screenWidth, height: screenWidth*0.5)
                
                Spacer(minLength: 10)
                
                HStack {
                    VStack(alignment: .leading){
                        ForEach(0..<showPieChartParamsNum){index in
                            VStack{
                                HStack {
                                    Circle()
                                        .foregroundColor(PieChartColorList[index])
                                        .frame(width: 6, height: 6, alignment: .leading)
                                    
                                    Text(relistedChartName[index])
                                        .font(.subheadline)
                                    Text(String(relistedChartData[index]))
                                        .foregroundColor(PieChartColorList[index])
                                        .font(.subheadline)
                                        .frame(alignment: .trailing)
                                    
                                }
                            }
                        }
                    }
                    /*
                    VStack(alignment: .trailing){
                        ForEach(0..<showPieChartParamsNum){index in
                            Text(String(relistedChartData[index]))
                                .foregroundColor(PieChartColorList[index])
                                .font(.subheadline)
                                .frame(alignment: .trailing)
                        }
                    }
                     */
                }
                .frame(width: pieChartViewWidth/2)
                //Spacer()
            
            }
            //.background(.blue)
            ///BAD!
            //.frame(width: pieChartViewWidth, height: pieChartViewHeight)
        }
        .padding()
    }
}

// for debugtest
public let pieChartDataItems: [PieChartDataModel] = [
    PieChartDataModel(name: "A318", data: 2.4, isMaster: false),
    PieChartDataModel(name: "A319", data: 3.2, isMaster: false),
    PieChartDataModel(name: "A320", data: 12.6, isMaster: false),
    PieChartDataModel(name: "A321", data: 8.8, isMaster: false),
    PieChartDataModel(name: "A319neo", data: 4.6, isMaster: false),
    PieChartDataModel(name: "A320neo", data: 5.2, isMaster: false),
    PieChartDataModel(name: "A321neo", data: 8.2, isMaster: false),
    PieChartDataModel(name: "A321neoLR", data: 0.2, isMaster: false),
    PieChartDataModel(name: "A321neoXLR", data: 0.4, isMaster: false),
    PieChartDataModel(name: "A332", data: 3.3, isMaster: false),
    PieChartDataModel(name: "A333", data: 5.6, isMaster: true),
]

struct Compent_BasePieChartView_Previews: PreviewProvider {
    static var previews: some View {
        BasePieChartView(pieChartName: "TestPieChart", pieChartNameFont: .headline, pieChartViewWidth: screenWidth * 0.92, pieChartViewHeight: screenWidth * 0.3, pieChartDataList: pieChartDataItems, showPieChartParamsNum: 5)
    }
}
