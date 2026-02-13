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
                NavigationLink(value: AppRoute.create) {
                    Label("Создать", systemImage: "house")
                }
                NavigationLink(value: AppRoute.home) {
                    Label("Главная", systemImage: "house")
                }
                NavigationLink(value: AppRoute.library) {
                    Label("Библиотека", systemImage: "building.columns")
                }
                NavigationLink(value: AppRoute.settings) {
                    Label("Настройки", systemImage: "gearshape")
                }
            }
            .navigationSplitViewColumnWidth(min: 250, ideal: 250, max: 250)
        } detail: {
            switch router.selectedRoute {
            case .create:
                CreateView()
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
