//
//  File.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/24.
//

import UIKit
import MapKit
import SwiftUIMapView

class MapAnnotation: NSObject, MapViewAnnotation, Identifiable {
    
    let coordinate: CLLocationCoordinate2D
    
    let title: String?
    
    let id = UUID()
    
    let clusteringIdentifier: String? = "exampleCluster"
    
    var glyphImage: UIImage? = UIImage(systemName: "e.circle.fill")
    
    var tintColor: UIColor? = .green
    
    init(title: String, glyphImage: UIImage?, tintColor: UIColor?, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.glyphImage = glyphImage
        self.tintColor  = tintColor
        self.coordinate = coordinate
    }
}

extension Array where Element == MapAnnotation {
    static var examples: [MapAnnotation] = {
        [
            MapAnnotation(title: "SZX", glyphImage: UIImage(systemName: "s.circle.fill"), tintColor: .blue, coordinate: CLLocationCoordinate2D(latitude: 22.79472222, longitude: 113.810833)),
            MapAnnotation(title: "SHA", glyphImage: UIImage(systemName: "d.circle.fill"), tintColor: .red, coordinate: CLLocationCoordinate2D(latitude: 31.19777778, longitude: 121.3363889)),
        ]
    }()
}


