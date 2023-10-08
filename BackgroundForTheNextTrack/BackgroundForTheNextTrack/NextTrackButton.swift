//
//  NextTrackButton.swift
//  BackgroundForTheNextTrack
//
//  Created by nastasya on 08.10.2023.
//

import Foundation
import SwiftUI

struct NextTrackButton: View {
    @State private var isAnimating = true
    var size: CGFloat = 60
    var duration = 0.9
    var scale = 0.0
    var color = Color.gray
    
    var body: some View {
        Button {
            isAnimating = true
            withAnimation(.interpolatingSpring(stiffness: 100, damping: 10)) {
                isAnimating.toggle()
            }
        } label: {
            ZStack {
                Image(systemName: "play.fill")
                    .scaleEffect(
                        x: isAnimating ? 0 : 1,
                        y: isAnimating ? 0 : 1,
                        anchor: .trailing
                    )
                    .offset(x: isAnimating ? size * -1 : size * -0.35)
                    .opacity(isAnimating ? 0 : 1)
                
                HStack(spacing: size * -0.1) {
                    Image(systemName: "play.fill")
                        .offset(x: isAnimating ? 0 : size * 0.75 )
                    
                    Image(systemName: "play.fill")
                        .opacity(isAnimating ? 1 : 0)
                        .scaleEffect(isAnimating ? 1 : 0)
                        .offset(x: isAnimating ? 0 : size * 0.5)
                }
            }
        }
        .buttonStyle(NextTrackButtonStyle(size: size, duration: duration, scale: scale, color: color))
    }
}

#Preview {
    NextTrackButton()
}
