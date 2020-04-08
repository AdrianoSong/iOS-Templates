//___FILEHEADER___

import Foundation
import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___Delegate: class {
    func onFinish()
}

class ___FILEBASENAMEASIDENTIFIER___: Coordinator {

    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?

    var window: UIWindow?

    init(window: UIWindow?, delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?) {
        self.window = window
        self.delegate = delegate
    }
    
    func start() {
        //TODO implement here
    }
    
    func finish() {
        delegate?.onFinish()
    }
}
