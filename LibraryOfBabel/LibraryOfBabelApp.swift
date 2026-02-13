//
//  LibraryOfBabelApp.swift
//  LibraryOfBabel
//
//  Created by Вавилов Илья on 12/2/26.
//

import SwiftUI
import SwiftData

@main
struct The_Library_of_BabelonApp: App {
    @AppStorage("selectedAppearance") private var selectedAppearance = 0
    @StateObject private var router = AppRouter()
    
    var scheme: ColorScheme? {
        if selectedAppearance == 1 { return .light }
        if selectedAppearance == 2 { return .dark }
        return nil
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .preferredColorScheme(scheme)
                .environmentObject(router)
        }
    }
}
 

