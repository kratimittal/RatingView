//
//  ViewController.swift
//  Rating View
//
//  Created by Krati Mittal on 25/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currenratingView: UIView!
    
    private lazy var ratingNib = UINib(nibName: "StarRatingView", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.loadRatingView()
    }
    
    private func loadRatingView() {
        guard let ratingView = ratingNib.instantiate(withOwner: self,
                                                     options: nil).first as? StarRatingView
        else { return }
        self.currenratingView.addSubview(ratingView)
        
        ratingView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: ratingView,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: self.currenratingView,
                           attribute: .top,
                           multiplier: 1.0,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: ratingView,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: self.currenratingView,
                           attribute: .bottom,
                           multiplier: 1.0,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: ratingView,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self.currenratingView,
                           attribute: .leading,
                           multiplier: 1.0,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: ratingView,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: self.currenratingView,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: 0).isActive = true
        
    }
    
}

