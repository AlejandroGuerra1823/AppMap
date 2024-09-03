//
//  Place.swift
//  AppMap
//
//  Created by Alejandro Guerra on 2/09/24.
//

import Foundation
import MapKit


struct Place:Identifiable{
    let id = UUID()
    var name:String
    var coordinates:CLLocationCoordinate2D
    var fav:Bool
}
