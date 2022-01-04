//
//  Compent_EarthView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/27.
//

import SwiftUI
import Model3DView


struct ScrollDashBoardEarthView: View {
    @State var Camera = PerspectiveCamera(fov: .degrees(70))
    
    var body: some View {
        Model3DView(named: "Earth.usdz")
            .frame(width: screenWidth * 0.82, height: screenWidth * 0.82)
            .cameraControls(OrbitControls(
                camera: $Camera,
                sensitivity: 0.5
            ))
             
    }
}
struct Compent_EarthView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollDashBoardEarthView()
    }
}
