//
//  ModelData.swift
//  Soccerf
//
//  Created by Aiden Ly on 01/08/2022.
//

import Foundation
var teams = decodeJsonFromJsonFile(jsonFileName: "teams.json")

func decodeJsonFromJsonFile(jsonFileName: String) -> [Team] {
  if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil) {
    if let data = try? Data(contentsOf: file) {
      do {
        let decoder = JSONDecoder()
        let decoded = try decoder.decode([Team].self, from: data)
        return decoded
      } catch let error {
        fatalError("Failed to decode JSON: \(error)")
      }
    }
  } else {
    fatalError("Couldn't load \(jsonFileName) file")
  }
  return [] as [Team]
}
