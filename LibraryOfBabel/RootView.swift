//
//  RootView.swift
//  LibraryOfBabel
//
//  Created by Вавилов Илья on 12/2/26.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        #if os(macOS)
        MacRootView()
        #elseif os(iOS)
        IOSRootView()
        #endif
    }
}
