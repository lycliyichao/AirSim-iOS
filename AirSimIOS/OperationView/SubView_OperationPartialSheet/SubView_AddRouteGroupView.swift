//
//  SubView_AddRouterGroupView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/30.
//

import SwiftUI

struct SubView_AddRouteGroupView: View {
    @State private var newRouteGroupName: String = ""
    private let placeHolderContent: String = "请输入新航线组名称"
    
    var body: some View {
        VStack{
            Text("添加新航线组")
                .font(.title)
                .bold()
                .padding()
            
            HStack{
                Text("新航线组名称:")
                    .font(.headline)
                    .bold()
                    .padding()
                
                Spacer()
            }
            
            //TextField
            TextField(placeHolderContent,
                      text: $newRouteGroupName)
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

struct SubView_AddRouteGroupView_Previews: PreviewProvider {
    static var previews: some View {
        SubView_AddRouteGroupView()
    }
}
