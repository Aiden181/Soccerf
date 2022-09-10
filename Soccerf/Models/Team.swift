//
//  Team.swift
//  Soccerf
//
//  Created by Aiden Ly on 01/08/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Team: Codable, Identifiable{
    var id: Int
    var name: String
    var stadium: String
    var country: String
    var reputation: Int
    var description: String
    var link: String
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    var coordinates: Coordinates

    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude)
    }

    struct Coordinates: Codable {
        var latitude: Double
        var longitude: Double
    }
}


