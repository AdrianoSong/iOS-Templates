//___FILEHEADER___

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UICollectionViewCell {

    fileprivate let viewContainer: UIView = {

        let view = UIView()
        view.layer.cornerRadius = 16
        view.clipsToBounds = true
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(viewContainer)
        viewContainer.topAnchor.constraint(equalTo: topAnchor).isActive = true
        viewContainer.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewContainer.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewContainer.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
