//
//  MapViewCoordinator.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/24.
//

import MapKit

final class MapViewCoordinator: NSObject, MKMapViewDelegate {
  private let map: TestMapView
  
  init(_ control: TestMapView) {
    self.map = control
  }
  
  func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
    if let annotationView = views.first, let annotation = annotationView.annotation {
      if annotation is MKUserLocation {
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
      }
    }
  }

  func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
    let renderer = MKPolylineRenderer(overlay: overlay)
    renderer.strokeColor = .blue
    renderer.lineWidth = 3.0
    return renderer
  }
}
