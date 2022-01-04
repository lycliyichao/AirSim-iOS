//
//  ContentView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/11/5.
//

import SwiftUI
import UIKit
import CoreData
import SceneKit
import PopupView
import BottomBar_SwiftUI
import MapKit
import Model3DView
import SwiftUIMapView
import PartialSheet


//获取屏幕长宽参数
let screenWidth  = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

//BottomBar的初始化参数
let items: [BottomBarItem] = [
    BottomBarItem(icon: "house.fill", title: L("DashBoard"), color: .purple),
    BottomBarItem(icon: "airplane", title: NSLocalizedString("Operation", comment: ""), color: .pink),
    BottomBarItem(icon: "banknote.fill", title: NSLocalizedString("Market", comment: ""), color: .orange),
    BottomBarItem(icon: "person.fill", title: NSLocalizedString("Profile", comment: ""), color: .blue)
]


//初始化基础页面。整个页面分为初始页面+BottomBar
struct BasicView: View {
    
    //尝试连接CoreData数据库
    //@Environment(\.managedObjectContext) private var viewContext
    
    let item: BottomBarItem
    let selectedIndex: Int
    let annotations: [MapViewAnnotation] = [MapAnnotation].examples
    
    /*
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.334_900,
                                       longitude: -122.009_020),
        latitudinalMeters: 5000000,
        longitudinalMeters: 5000000
    )
     */
    
    let coordinates = [
        CLLocationCoordinate2D(latitude: 40.078538, longitude: 116.587095),
        CLLocationCoordinate2D(latitude: 31.143333, longitude: 121.805277)
    ]

    var detailText: String {
        "\(item.title) Detail"
    }

    var destination: some View {
        Text(detailText)
            .navigationBarTitle(Text(detailText))
    }

    //一种跳转安检的示例
    var navigateButton: some View {
        NavigationLink(destination: destination) {
            ZStack {
                Rectangle()
                    .fill(item.color)
                    .cornerRadius(8)
                    .frame(height: 52)
                    .padding(.horizontal)

                Text("Navigate")
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
    }

    var body: some View {
        VStack {
            //切换页面显示
            if selectedIndex == 0 {
                //第一页加载DashBoardView
                ScrollDashBoardView()
            }
            if selectedIndex == 1{
                ScrollOperationView()
            }
            if selectedIndex == 2{
                Text("第三页了")
            }
            if selectedIndex == 3{
                Text("第四页了")
            }

        
            
        
            //保留元素占位，以获得正确的BottomBar的显示位置
            Spacer()
        }
    }
}

//主页面显示
struct ContentView : View {
    @State private var selectedIndex: Int = 0

    var selectedItem: BottomBarItem {
        items[selectedIndex]
    }

    var body: some View {
        VStack{
            NavigationView{
                VStack{
                    BasicView(item: selectedItem, selectedIndex:selectedIndex)
                    Spacer(minLength: 0)
                    
                    //List {
                    //    ForEach(0..<5){index in
                    //        Text("Test")
                    //    }
                    //}
                    
                    BottomBar(selectedIndex: $selectedIndex, items: items)
                        .padding(.vertical, 2)
                        .dynamicTypeSize(.xLarge) //需要iOS15
                }
            }
        }
        .addPartialSheet()
    }
}
private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .environment(\.locale, .init(identifier: "en"))
    }
}
