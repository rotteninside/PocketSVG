//
//  DetailViewController.swift
//  Demo-iOS
//
//  Created by Ariel Elkin on 04/04/2018.
//  Copyright © 2018 PocketSVG. All rights reserved.
//

import UIKit
import PocketSVG

class SimpleDetailViewController: UIViewController {

    init(svgURL: URL) {
        super.init(nibName: nil, bundle: nil)

        view.backgroundColor = .white

//        let svgImageView = SVGImageView.init(contentsOf: svgURL)
        let svgImageView = SVGImageView.init(contentsOfURLandString: svgURL, stringValue: "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 31.23 18.94\"><path d=\"M9.69 9.98l5.93 4.38 5.93-4.38V8.7l2.55-2C22.82 1.22 19 0 19 0c1.39 4.43-2.36 5.43-3.38 5.43s-4.77-1-3.38-5.43c0 0-3.82 1.22-5.1 6.71l2.55 2v1.27z\"/><path d=\"M24.43 5.09s.59.95.47 2.08l-2.56 1.9v1.34l-6.73 4.83-6.73-4.83V9.07l-2.56-1.9c-.12-1.14.48-2.08.48-2.08L0 8.67c7.15 2.99 15.62 10.27 15.62 10.27s8.47-7.27 15.62-10.27l-6.81-3.58z\"/></svg>")
        svgImageView.contentMode = .scaleAspectFit

        view.addSubview(svgImageView)
        svgImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            svgImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12),
            svgImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12),
            svgImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            svgImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12),
            ]
        )
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
