//
//  GamesTableView.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 10/21/20.
//

import SwiftUI

struct GamesTableView: View {
  var body: some View {
    let dates = Bundle.main.decode([GamesDate].self, from: "dates.json")
    NavigationView {
      List {
        ForEach(dates) { date in
          DateRow(date: date)
        }
      }.navigationBarTitle("") // Title must be set to use hidden property
      .navigationBarHidden(true)}
  }
}

struct DateRow: View {
  let date: GamesDate
  
  var body: some View {
    let games = date.games
    Section(header: Text(date.date)) {
      ForEach(games) { game in
        NavigationLink(destination: GameDetailsView(game: game)) {
          GameRow(game: game)}
      }
    }
  }
}

struct GameRow: View {
  let game: Game
  
  var body: some View {
    VStack {
      HStack {
        Text(game.name).bold()
        Spacer()
        Text(game.status)
      }.padding(.bottom, 5)
      HStack {
        Text(game.time)
        Spacer()
        Image(systemName: "arrow.right")
      }
    }.padding(10)
    
  }
}

struct GamesTableView_Previews: PreviewProvider {
  static var previews: some View {
    GamesTableView()
  }
}
