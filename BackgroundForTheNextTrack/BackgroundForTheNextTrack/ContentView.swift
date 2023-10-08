//
//  ContentView.swift
//  BackgroundForTheNextTrack
//
//  Created by nastasya on 08.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    private let size: CGFloat = 60
    private let duration = 0.22
    private let scale = 0.86
    
    var body: some View {
        HStack {
            NextTrackButton()
            NextTrackButton(size: size, duration: duration, scale: scale, color: .purple)
        }
    }
}

#Preview {
    ContentView()
}

