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
                .font(.title2)
            
            Divider()
            
            HStack {
                TileView(
                    title: "Create", icon: "wand.and.sparkles.inverse"
                ) {
                    router.selectedRoute = .create
                }
                
                Spacer()
            }
            Spacer()
        }
        .padding(24)
    }
}
