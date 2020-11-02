//
//  ContentView.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 10/19/20.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
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
