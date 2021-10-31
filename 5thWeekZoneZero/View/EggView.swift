//
//  EggView.swift
//  5thWeekZoneZero
//
//  Created by Mustafa Berkay Kaya on 30.10.2021.
//

import UIKit

class EggView: UIView {

    private  weak var imageView: UIImageView!
    private let eggIcon = "egg.png"
    
     override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
          
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
        imageView.image = UIImage(named: eggIcon)
        imageView.contentMode = .scaleAspectFit
        self.imageView = imageView
        backgroundColor = UIColor.clear
    }
    
}
