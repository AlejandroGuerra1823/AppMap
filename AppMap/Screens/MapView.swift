//
//  ContentView.swift
//  AppMap
//
//  Created by Alejandro Guerra on 1/09/24.
//6.219340, -75.605029

import SwiftUI
import MapKit

struct MapView: View {
    @State var position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.219340, longitude: -75.605029), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)))
    
    
    var body: some View {
        ZStack{
            Map(position: $position).mapStyle(.hybrid(elevation: .realistic))
        
        VStack{
            Spacer()
            HStack{
                Button("Ir al sur"){
                    position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.219340, longitude: -75.605029), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)))
                }.background(.white)
                Button("Ir al norte"){
                    position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.338004, longitude: -75.558830), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)))
                }.background(.white)
            }
        }
        }
    }
}

#Preview {
    MapView()
}
