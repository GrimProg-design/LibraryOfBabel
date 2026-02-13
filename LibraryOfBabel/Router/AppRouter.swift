//
//  AppRouter.swift
//  LibraryOfBabel
//
//  Created by Вавилов Илья on 12/2/26.
//

import Foundation
import Combine

enum AppRoute {
    case home, library, settings
}

final class AppRouter: ObservableObject {
    @Published var selectedRoute: AppRoute? = .home
}
