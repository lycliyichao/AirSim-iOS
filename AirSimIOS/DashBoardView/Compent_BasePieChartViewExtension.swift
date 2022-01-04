//
//  Compent_BasePieChartViewExtension.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/31.
//

import SwiftUI

extension BasePieChartView{
    static func relistPieChartDataList(_ data:[PieChartDataModel], _ showNum:Int) -> [PieChartDataModel]{
        var resultData: [PieChartDataModel] = []
        var isHaveMaster: Bool = false
        var isHaveMasterIndex: Int = 0
        
        if data.count < 1{
            return resultData
        }
        
        //relist Chart Data
        let relistData = data.sorted(by: {$0.data > $1.data})

        //check isMaster
        for index in 0..<relistData.count {
            if relistData[index].isMaster == true {
                resultData.append(relistData[index])
                isHaveMaster = true
                isHaveMasterIndex = index
            }
        }
        
        //reset resultData
        if isHaveMaster {
            if isHaveMasterIndex < showNum {
                for appendIndex in 0..<showNum {
                    //data
                    if appendIndex != isHaveMasterIndex {
                        resultData.append(relistData[appendIndex])
                    }
                }
            }else{
                for appendIndex in 0..<showNum {
                    resultData.append(relistData[appendIndex])
                }
            }
        }else{
            for appendIndex in 0..<showNum {
                resultData.append(relistData[appendIndex])
            }
        }

        return resultData
    }
    
    func getRelistedPieChartData(_ data:[PieChartDataModel]) -> [Double]{
        var resultData:[Double] = []
        if data.count < 1 {
            return resultData
        }
        
        for index in 0..<data.count{
            resultData.append(data[index].data)
        }
        
        return resultData
    }
    
    func getRelistedPieChartName(_ data:[PieChartDataModel]) -> [String]{
        var resultData:[String] = []
        if data.count < 1 {
            return resultData
        }
        
        for index in 0..<data.count{
            resultData.append(data[index].name)
        }
        
        return resultData
    }
    
    func isRelistedPieChartHasMaster(_ data:[PieChartDataModel]) -> Bool{
        if data.count < 1 {
            return false
        }
        
        for index in 0..<data.count{
            if data[index].isMaster {
                return true
            }
        }
        
        return false
    }
}
