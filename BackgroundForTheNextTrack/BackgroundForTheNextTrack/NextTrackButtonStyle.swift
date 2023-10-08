//
//  NextTrackButton.swift
//  BackgroundForTheNextTrack
//
//  Created by nastasya on 08.10.2023.
//

import SwiftUI

struct NextTrackButtonStyle: PrimitiveButtonStyle {
    var size: CGFloat
    var duration: CGFloat
    var scale: CGFloat
    var color: Color
    @State private var isAnimating = false
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Circle()
                .foregroundStyle(color.opacity(0.4))
                .frame(width: size * 2)
                .opacity(isAnimating ? 0.5 : 0)
            
            configuration.label
                .font(.system(size: size))
                .foregroundStyle(color)
                .onTapGesture {
                    configuration.trigger()
                    withAnimation(.spring(duration: duration)) {
                        isAnimating.toggle()
                    } completion: {
                        isAnimating = false
                    }
                }
        }
        .scaleEffect(isAnimating ? scale : 1)
    }
}

