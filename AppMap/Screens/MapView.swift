//
//  ContentView.swift
//  AppMap
//
//  Created by Alejandro Guerra on 1/09/24.
//6.219340, -75.605029

import SwiftUI
import MapKit

struct MapView: View {
    @State var position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.419969, longitude: -3.702561), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    
    @State var places:[Place] = []
    
    
    var body: some View {
        ZStack{
            MapReader{ proxy in Map(position: $position).onTapGesture {
                
            }}
        }
        
        
    }
}

#Preview {
    MapView()
}

