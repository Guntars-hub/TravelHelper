//
//  MapAnnotationView.swift
//  TravelHelper
//
//  Created by guntars.grants on 25/02/2021.
//

import SwiftUI

struct MapAnnotationView: View {
    var location: Location
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 44, height: 44, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 42, height: 42, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.country)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        } //: ZSTACK
        
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}
