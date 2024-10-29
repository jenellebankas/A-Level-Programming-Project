//
//  ARView.swift
//  A-level Solar System Project
//
//  Created by Jenelle Bankas on 26/09/2022.
//

import SwiftUI
import UIKit
import RealityKit
import SceneKit

//To create AR view
struct ContentView : View {
    var body: some View {
            ARViewContainer().edgesIgnoringSafeArea(.all)
  }
}

struct ARViewContainer: UIViewRepresentable {
    
 func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
   
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sceneView = SCNView(frame: self.view.frame)
        self.view.addSubview(sceneView)
        
        let scene = SCNScene()
        sceneView.scene = scene
        
        let camera = SCNCamera()
        let cameraNode = SCNNode()
        cameraNode.camera = camera
        cameraNode.position = SCNVector3(x: -3.0, y: 3.0, z: 3.0)
        
        let light = SCNLight()
        light.type = SCNLight.LightType.omni
        let lightNode = SCNNode()
        lightNode.light = light
        lightNode.position = SCNVector3(x: 1.5, y: 1.5, z: 1.5)
        
        let sphereGeometry = SCNSphere(radius: 5)
        
        let sphereNode = SCNNode(geometry: sphereGeometry)
        
        let constraint = SCNLookAtConstraint(target: sphereNode)
        constraint.isGimbalLockEnabled = true
        cameraNode.constraints = [constraint]
        
        
        scene.rootNode.addChildNode(lightNode)
        scene.rootNode.addChildNode(cameraNode)
        scene.rootNode.addChildNode(sphereNode)
        

    }

}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
       ContentView()
    }
}

#endif
