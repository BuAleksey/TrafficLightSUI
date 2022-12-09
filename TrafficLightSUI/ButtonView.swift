//
//  ButtonView.swift
//  TrafficLightSUI
//
//  Created by Buba on 09.12.2022.
//

import SwiftUI

struct ButtonView: View {
    @State var trafficLight = TrafficLight()
    
    @State private var currentLight = Ligts.red
    @State private var buttonName = "Start"
    
    var body: some View {
        Button(action: buttonTap) {
            ZStack {
                Capsule()
                    .frame(width: 150, height: 60)
                    .overlay(Capsule().stroke(Color(.white), lineWidth: 4))
                Text("\(buttonName)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
    
    private func buttonTap() {
        if buttonName == "Start" {
            buttonName = "Next"
        }
        
        switch currentLight {
        case .red:
            trafficLight.greenLightOpacity = 0.5
            trafficLight.redLightOpacity = 1
            currentLight = Ligts.yellow
        case .yellow:
            trafficLight.redLightOpacity = 0.5
            trafficLight.yellowLightOpacity = 1
            currentLight = Ligts.green
        case .green:
            trafficLight.yellowLightOpacity = 0.5
            trafficLight.greenLightOpacity = 1
            currentLight = Ligts.red
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(trafficLight: TrafficLight())
    }
}
