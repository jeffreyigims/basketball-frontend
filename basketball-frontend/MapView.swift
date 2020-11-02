//
//  MapView.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 10/19/20.
//

import SwiftUI
import MapKit

struct MapView: View {
  //  @ObservedObject var userLocation: Location
  //  var viewController: ViewController = ViewController()
  @ObservedObject var userLocation = Location()
  @State private var userTrackingMode: MapUserTrackingMode = .follow
  //  let games: [Game]
  
  var body: some View {
    let games = Bundle.main.decode([Game].self, from: "data.json")
    
    Map(
      coordinateRegion: $userLocation.region,
      interactionModes: MapInteractionModes.all,
      showsUserLocation: true,
      userTrackingMode: $userTrackingMode,
      annotationItems: games,
      annotationContent: annotationContent(game:)
    )
    .edgesIgnoringSafeArea(.all)
  }
  
  func annotationContent(game: Game) -> some MapAnnotationProtocol {
    MapAnnotation(coordinate: CLLocationCoordinate2D(latitude:   game.latitude, longitude: game.longitude)) {
      Circle().onTapGesture() { print("Tapped") }
    }
    //    MapMarker(coordinate: CLLocationCoordinate2D(latitude:   game.latitude, longitude: game.longitude), tint: .red)  }
  }
}

struct MapView_Previews: PreviewProvider {
  
  static var previews: some View {
    MapView()
  }
}
