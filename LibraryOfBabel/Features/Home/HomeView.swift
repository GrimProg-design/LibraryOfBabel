//
//  HomeView.swift
//  LibraryOfBabel
//
//  Created by Вавилов Илья on 12/2/26.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: AppRouter
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Действия")
                .font(.title3)
            
            Divider()
            
            HStack(spacing: 16) {
                TileView(
                    title: "Создать", icon: "wand.and.sparkles.inverse"
                ) {
                    router.selectedRoute = .create
                }
                
                TileView(title: "Вавилонская Библиотека", icon: "building.columns") {
                    router.selectedRoute = .library
                }
                
                Spacer()
            }
            Spacer()
        }
        .padding(24)
    }
}
