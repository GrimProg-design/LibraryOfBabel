//
//  MacRootView.swift
//  LibraryOfBabel
//
//  Created by Вавилов Илья on 12/2/26.
//

import SwiftUI

struct MacRootView: View {
    @StateObject var router = AppRouter()
    
    var body: some View {
        NavigationSplitView {
            List(selection: $router.selectedRoute) {
                NavigationLink(value: AppRoute.home) {
                    Label("Главная", systemImage: "home")
                }
                NavigationLink(value: AppRoute.library) {
                    Label("Библиотека", systemImage: "circle")
                }
                NavigationLink(value: AppRoute.settings) {
                    Label("Настройки", systemImage: "circle")
                }
            }
        } detail: {
            switch router.selectedRoute {
            case .home:
                HomeView()
            case .library:
                LibraryView()
            case .settings:
                SettingsView()
            default:
                EmptyView()
            }
        }
    }
}
