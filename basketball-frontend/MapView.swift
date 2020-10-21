//
//  MapView.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 10/19/20.
//

import SwiftUI
import MapKit

struct MapView: View {
  @ObservedObject var userLocation: Location
  @State private var userTrackingMode: MapUserTrackingMode = .follow
  let games: [Game]
  
  var body: some View {
    
        Map(
          coordinateRegion: $userLocation.region,
          interactionModes: MapInteractionModes.all,
          showsUserLocation: true,
          userTrackingMode: $userTrackingMode,
          annotationItems: games
        ) { game in MapMarker(coordinate: CLLocationCoordinate2D(latitude:   game.latitude, longitude: game.longitude), tint: .blue) }
        .edgesIgnoringSafeArea(.all)
    
  }
}

//struct MapView_Previews: PreviewProvider {
//  var games = Bundle.main.decode([Game].self, from: "data.json")
//  static var previews: some View {
//    MapView(userLocation: Location(), games: games)
//  }
//}
