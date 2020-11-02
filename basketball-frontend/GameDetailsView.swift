//
//  GameDetailsView.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 10/21/20.
//

import SwiftUI

struct GameDetailsView: View {
  let game: Game
  
  var body: some View {
    Text(game.name)
  }
}

//struct GameDetailsView_Previews: PreviewProvider {
//  var games = Bundle.main.decode([Game].self, from: "data.json")
//
//  static var previews: some View {
//    GameDetailsView(game: games[0])
//    }
//}
