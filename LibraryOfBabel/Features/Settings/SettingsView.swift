//
//  SettingsView.swift
//  LibraryOfBabel
//
//  Created by Вавилов Илья on 12/2/26.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("selectedAppearance") private var selectedAppearance = 0
    
    var body: some View {
        List {
            Section(header: Text("Appearance")) {
                HStack(spacing: 20) {
                    ThemePreview(title: "Light", imageName: "lightTheme", tag: 1, selection: $selectedAppearance)
                    
                    ThemePreview(title: "Dark", imageName: "darkTheme", tag: 2, selection: $selectedAppearance)
                    
                    ThemePreview(title: "System", imageName: "systemMode", tag: 0, selection: $selectedAppearance)
                    
                }
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
            }
        }
    }
}
 
struct ThemePreview: View {
    let title: String
    let imageName: String
    let tag: Int
    @Binding var selection: Int
    
    var body: some View {
        Button {
            selection = tag
            
        } label: {
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(selection == tag ? Color.blue : Color.clear, lineWidth: 3)
                    )
                
                Text(title)
                    .font(.caption)
                    .foregroundColor(selection == tag ? .blue : .primary)
            }
        }
        .buttonStyle(.plain)
    }
}
