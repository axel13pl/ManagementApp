//
//  ContentView.swift
//  ManagementApp
//
//  Created by Aleksander Gajewski on 07/07/2024.
//

import SwiftUI
import SwiftUI

struct ContentView: View {
    @State private var isAuthenticated = false

    var body: some View {
        NavigationView {
            if isAuthenticated {
                UserProfileView()
            } else {
                AuthView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

