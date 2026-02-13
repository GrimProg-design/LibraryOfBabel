//
//  TileView.swift
//  LibraryOfBabel
//
//  Created by Вавилов Илья on 12/2/26.
//

import SwiftUI

struct TileView: View {
    let title: String
    let icon: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Text(title)
                    .font(.title2)
                
                Image(systemName: icon)
                    .font(.system(size: 32))
            }
            .frame(width: 120, height: 120)
            .background(.ultraThinMaterial)
            .cornerRadius(24)
            .shadow(radius: 4)
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color.white, lineWidth: 0.5 )
            )
        }
        .buttonStyle(.plain)
        .onHover{ inside in
            if inside {
                NSCursor.pointingHand.push()
            } else {
                NSCursor.pop()
            }
        }
    }
}
