//
//  StarRatingView.swift
//  Rating View
//
//  Created by Krati Mittal on 25/02/23.
//

import UIKit

class StarRatingView: UIView {
    
    private var rating = 0
    private var maxRating = 0
    
    var deselectIcon: UIImage! = UIImage(systemName: "star")
    var selectedIcon: UIImage! = UIImage(systemName: "star.fill")
//    var starTintColor: UIColor {
//        didSet {
//            self.tintColor = starTintColor
//        }
//    }
    
    @IBOutlet var ratingButtons: [UIButton]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupUI() {
        self.ratingButtons.forEach { button in
            button.setImage(self.deselectIcon, for: .normal)
            button.setImage(self.selectedIcon, for: .selected)
            button.addTarget(self, action: #selector(didTapRatingButton), for: .touchUpInside)
        }
        self.maxRating = self.ratingButtons.count
    }
    
    @objc func didTapRatingButton(_ sender: UIButton) {
        if self.rating < sender.tag {
            self.rating = sender.tag + 1
            self.ratingButtons.forEach { button in
                button.isSelected = button.tag < self.rating
            }
        } else {
            if self.rating == sender.tag + 1 {
                sender.isSelected = !sender.isSelected
                self.rating = sender.tag
            } else {
                self.rating = sender.tag + 1
                self.ratingButtons.forEach { button in
                    button.isSelected = button.tag < self.rating
                }
            }
        }
    }
    
}
