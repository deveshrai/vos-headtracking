//
//  ImmersiveView.swift
//  HeadTrackingTest0-Vos
//
//  Created by Devesh Rai on 02/04/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

let anchor=AnchorEntity(.head)
struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            
            
            // Add the initial RealityKit content
            if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
                scene.setParent(anchor)
                content.add(anchor)
                anchor.addChild(scene)
                // Z offset is important
                scene.transform.translation.z = -0.25
                scene.transform.translation.y = -1
                scene.transform.translation.x = 0
                
                
            }
            
            
//            if let model = try? await Entity(named: "Sphere_left", in: realityKitContentBundle) {
//                            // Parent the model to the anchor, so its position is then relative to the anchor's position.
//                            anchor.addChild(ContentView())
//                            // Move the model into the desired location (and scale) relative to the anchor.
////                            model.move(
////                                to: Transform(scale: SIMD3(x: 0.1, y: 0.1, z: 0.1),
////                                translation: SIMD3<Float>(-0.05,0.005,0.1)), relativeTo: anchor
////                            )
//                        }
            
        }
    }
}

#Preview(immersionStyle: .mixed) {
    ImmersiveView()
}
