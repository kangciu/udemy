//
//  ContentView.swift
//  SwiftUIAsyncImage
//
//  Created by 강치우 on 12/5/23.
//

import SwiftUI

struct ContentView: View {
    
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // MARK: - 1. BASIC
        
//        AsyncImage(url: URL(string: imageURL))
        
        // MARK: - 2. SCALE
        
//        AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
        // MARK: - 3. PLACEHOLDER
        
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 128)
                .foregroundStyle(.purple)
                .opacity(0.5)
        }
        .padding(40)
    }
}

#Preview {
    ContentView()
}
