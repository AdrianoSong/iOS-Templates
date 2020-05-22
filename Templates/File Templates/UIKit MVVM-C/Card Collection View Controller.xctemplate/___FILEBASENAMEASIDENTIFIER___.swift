//___FILEHEADER___

import Foundation
import UIKit

/**
    YOU NEED TO ADD this import:
    #import "AnimatedCollectionViewLayout.h"
    To your BridgingHeader.h file on your xcode project to use this card collection 
 */
class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {

    struct Constants {
        static let cardCollectionHeight: CGFloat = 300
        static let cardCellHeight: CGFloat = 200
        static let cell = "cell"
    }

    fileprivate let animator: LayoutAttributesAnimator = {

        return LinearCardAttributesAnimator(itemSpacing: 0.28, scaleRate: 0.8)
    }()

    fileprivate let cardCollection: UICollectionView = {

        let layout = AnimatedCollectionViewLayout()
        layout.scrollDirection = .horizontal

        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.backgroundColor = .clear
        view.isPagingEnabled = true
        view.showsHorizontalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(___FILEBASENAMEASIDENTIFIER___Cell.self, forCellWithReuseIdentifier: Constants.cell)
        view.isScrollEnabled = true

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "___FILEBASENAMEASIDENTIFIER___ViewController"
        view.backgroundColor = .white

        setupCardCollectionConstraints()
    }

    fileprivate func setupCardCollectionConstraints() {

        if let layout = cardCollection.collectionViewLayout as? AnimatedCollectionViewLayout {
            layout.animator = animator
        }

        cardCollection.dataSource = self
        cardCollection.delegate = self

        view.addSubview(cardCollection)

        cardCollection.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cardCollection.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cardCollection.heightAnchor.constraint(equalToConstant: Constants.cardCollectionHeight).isActive = true
        cardCollection.widthAnchor.constraint(
            equalToConstant: UIScreen.main.bounds.width).isActive = true
    }
}

extension ___FILEBASENAMEASIDENTIFIER___ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
            Constants.cell, for: indexPath) as? ___FILEBASENAMEASIDENTIFIER___Cell else {
            return UICollectionViewCell()
        }

        return cell
    }
}

extension ___FILEBASENAMEASIDENTIFIER___ViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: view.bounds.width,
                      height: Constants.cardCellHeight * 1.2)
    }
}
