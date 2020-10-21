//
//  HomeView.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 10/21/20.
//

import SwiftUI

struct HomeView: View {
  @State private var isOpen = false

  var body: some View {
    GeometryReader { geometry in
      Color.green
      // Content is passed as a closure to the bottom view
      BottomView(isOpen: self.$isOpen, maxHeight: geometry.size.height * 0.8) {
        Color.blue
      }
    }.edgesIgnoringSafeArea(.all)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
