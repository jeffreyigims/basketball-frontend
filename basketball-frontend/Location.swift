//
//  Location.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 10/19/20.
//

import Foundation
import CoreLocation
import MapKit

class Location: NSObject, ObservableObject, CLLocationManagerDelegate {
  
  @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.443765, longitude: -79.925687),
                                             span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
//  private let locationManager = CLLocationManager()
//
//  override init() {
//    super.init()
//    locationManager.delegate = self
//    locationManager.desiredAccuracy = kCLLocationAccuracyBest
//    locationManager.requestWhenInUseAuthorization()
//    locationManager.startUpdatingLocation()
//  }
//
//  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//    locations.last.map {
//        let center = CLLocationCoordinate2D(latitude: $0.coordinate.latitude, longitude: $0.coordinate.longitude)
//        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
//        region = MKCoordinateRegion(center: center, span: span)
//    }
//  }
}

