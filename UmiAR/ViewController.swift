//
//  ViewController.swift
//  UmiAR
//
//  Created by Paul Frank Pacheco Carpio on 5/13/20.
//  Copyright © 2020 Paul Frank Pacheco Carpio. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
