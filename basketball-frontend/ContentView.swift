//
//  ContentView.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 10/19/20.
//

import SwiftUI

struct ContentView: View {
  //  var viewController: ViewController = ViewController()
  //  @ObservedObject var userLocation = Location()
  
  var body: some View {
    //      let games = Bundle.main.decode([Game].self, from: "data.json")
    //      MapView(userLocation: userLocation, games: games)
    TabView {
     HomeView().tabItem({
        Text("Home")
        Image(systemName: "house.fill")
      })
      Text("Add").tabItem({
        Text("Create Game")
        Image(systemName: "plus.circle.fill")
      })
      Text("Profile").tabItem({
        Text("Profile")
        Image(systemName: "person.fill")
      })
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone 11 Pro")
  }
}
