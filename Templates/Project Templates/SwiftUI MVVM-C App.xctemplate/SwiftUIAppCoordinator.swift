//
//  Coordinator.swift
//  ___PROJECTNAME___
//
//  Created by Adriano Song on 4/2/20.
//
import UIKit
import SwiftUI

class SwiftUIAppCoordinator: Coordinator {
    
    var window: UIWindow?

    init(window: UIWindow?) {
        self.window = window
    }

    func start() {

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        window?.rootViewController = UIHostingController(rootView: contentView)
    }

    func finish() {
        //TODO implement here
    }
}
