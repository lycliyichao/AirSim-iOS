//
//  SubView_HomeBaseView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/26.
//

import SwiftUI
import SwiftUIMapView
import MapKit


var homeBaseTitle = "SIN"
var homeBaseCoordinate = CLLocationCoordinate2D(latitude: 1.35019, longitude: 103.994003)
let homeBase: [MapAnnotation] = {
    [
        MapAnnotation(title: homeBaseTitle, glyphImage: UIImage(systemName: "house.fill"), tintColor: .orange, coordinate: homeBaseCoordinate),
    ]
}()

struct HomeBaseView: View {
    
    @State private var homeBaseRegion: MKCoordinateRegion? = MKCoordinateRegion(
        center: homeBaseCoordinate,
        latitudinalMeters: 30000,
        longitudinalMeters: 30000
    )
    
    var body: some View {
        //加载地图View
        VStack {
            MapView(region: $homeBaseRegion,
                    isZoomEnabled: true,
                    isScrollEnabled: false,
                    showsUserLocation: false,
                    annotations: homeBase,
                    isOverlayPloyLine: false,
                    isSupportVia: false,
                    startCoordinate:CLLocationCoordinate2D(latitude: 22.79472222, longitude: 113.810833),
                    midCoordinate: homeBaseCoordinate,
                    endCoordinate: CLLocationCoordinate2D(latitude: 31.19777778, longitude: 121.3363889)
            )
                .frame(width: screenWidth, height: screenHeight * 0.4)
            
            //基地机场名称 -- 可能会去除
            HStack {
                Text(BaseAccountManager.homeBaseFullTitle+"("+BaseAccountManager.homeBaseSubTitle+")")
                    .font(.headline)
                    .padding(.horizontal)
                Spacer()
            }
            
            //占位
            Spacer()
        }
        // NavigationView的标题
        .navigationTitle(BaseAccountManager.homeBaseFullTitle+"("+BaseAccountManager.homeBaseSubTitle+")")
        
    }
}

struct testNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        HomeBaseView()
    }
}
