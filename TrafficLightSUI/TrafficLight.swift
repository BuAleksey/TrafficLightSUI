//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Buba on 09.12.2022.
//

import SwiftUI

struct TrafficLight: View {
    @State var redLightOpacity = 0.5
    @State var yellowLightOpacity = 0.5
    @State var greenLightOpacity = 0.5
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                SectionView(color: .red)
                    .opacity(redLightOpacity)
                SectionView(color: .yellow)
                    .opacity(yellowLightOpacity)
                SectionView(color: .green)
                    .opacity(greenLightOpacity)
                
                Spacer()
                
                ButtonView(trafficLight: self)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
    }
}
