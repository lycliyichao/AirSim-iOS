//
//  SubView_AddStationView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/28.
//

import SwiftUI

struct SubView_AddFleetGroupView: View {
    @State private var newFleetGroupName: String = ""
    private let placeHolderContent: String = "请输入新机队名称"
    
    var body: some View {
        VStack{
            Text("添加新机队")
                .font(.title)
                .bold()
                .padding()
            
            HStack{
                Text("新机队名称:")
                    .font(.headline)
                    .bold()
                    .padding()
                
                Spacer()
            }
            
            //TextField
            TextField(placeHolderContent,
                      text: $newFleetGroupName)
                .frame(width: screenWidth * 0.88)
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .strokeBorder())
            
            HStack {
                //占位
                Spacer(minLength: 0)
                
                Button(action: {
                    
                }, label: {
                    ZStack {                        
                        Text("创建")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.white.opacity(0.8))
                            .padding(.horizontal, 10)
                            .padding(.vertical, 10)
                            .background(Rectangle().cornerRadius(10).foregroundColor(.blue.opacity(0.8)))
                    }
                })
                    .padding()
                    .shadow(color: Color(UIColor.darkGray).opacity(0.6), radius: 2, x: 1, y: 1)
            }
            
            
            
            //List
            
            
            
            
            
            
            
        }
    }
}

struct SubView_AddFleetGroupView_Previews: PreviewProvider {
    static var previews: some View {
        SubView_AddFleetGroupView()
    }
}
