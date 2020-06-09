//
//  Coordinator.swift
//  ___PROJECTNAME___
//
//  Created by Adriano Song on 4/2/20.
//
import UIKit

class AppCoordinator: Coordinator {
    
    var window: UIWindow?

    init(window: UIWindow?) {
        self.window = window
    }

    func start() {
        let viewController = ViewController()
        window?.rootViewController = viewController
    }

    func finish() {
        //TODO implement here
    }
}