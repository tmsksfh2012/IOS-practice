//
//  Tutorial_0331App.swift
//  Tutorial-0331
//
//  Created by κΉνν on 2022/03/31.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
