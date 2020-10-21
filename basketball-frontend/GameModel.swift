//
//  GameModel.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 10/19/20.
//

import Foundation

struct Game: Decodable, Identifiable {
  let id: Int
  let name: String
  let date: String
  let time: String
  let description: String
  let priv: String
  let longitude: Double
  let latitude: Double
  let userID: Int
  
  enum CodingKeys: String, CodingKey {
    case id = "game_id"
    case name
    case date
    case time
    case description
    case priv = "private"
    case longitude
    case latitude
    case userID = "user_id"
  }
}

extension Bundle {
  // Borrowed from Paul Hudson (@twostraws)
  func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle.")
    }

    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle.")
    }

    let decoder = JSONDecoder()

    guard let loaded = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to decode \(file) from bundle.")
    }
    print(loaded)

    return loaded
  }
}
