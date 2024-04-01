//
//  HeadTrackingTest0_VosApp.swift
//  HeadTrackingTest0-Vos
//
//  Created by Devesh Rai on 02/04/24.
//

import SwiftUI

@main
struct HeadTrackingTest0_VosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
