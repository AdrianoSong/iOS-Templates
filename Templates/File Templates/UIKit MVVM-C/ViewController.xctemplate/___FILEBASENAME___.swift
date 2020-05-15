//___FILEHEADER___

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    fileprivate let hello: UILabel = {
        let view = UILabel()
        view.textColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "___FILEBASENAMEASIDENTIFIER___"
        view.backgroundColor = .white

        view.addSubview(hello)
        hello.centerYAnchor.constraint(
            equalTo: view.centerYAnchor).isActive = true
        hello.centerXAnchor.constraint(
            equalTo: view.centerXAnchor).isActive = true

        hello.text = "___FILEBASENAMEASIDENTIFIER___"
    }
}
