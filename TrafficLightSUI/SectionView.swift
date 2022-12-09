//
//  SectionView.swift
//  TrafficLightSUI
//
//  Created by Buba on 09.12.2022.
//

import SwiftUI

struct SectionView: View {
    let color: Color
    
    var body: some View {
            Circle()
                .frame(width: 130, height: 130)
                .foregroundColor(color)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .padding(.top, 16)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(color: .green)
    }
}
