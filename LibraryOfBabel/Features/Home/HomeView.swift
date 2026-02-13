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
        TileView(
            title: "Create", icon: ""
        ) {
            router.selectedRoute = .home
        }
    }
}

#Preview {
    HomeView()
}
