//
//  PinterestLikeActivityIndicator.swift
//  PinterestIndicatorProject
//
//  Created by gustavo nascimento on 8/6/16.
//  Copyright © 2016 Gustavo. All rights reserved.
//

import UIKit

class PinterestLikeActivityIndicator: UIView {
    
    let circleRadius: CGFloat = 18
    let innerCircleRadius: CGFloat = 6.0
    
    lazy var containerSquare: UIView = {
        let square = UIView()
        square.translatesAutoresizingMaskIntoConstraints = false
        square.backgroundColor = .clearColor()
        return square
    }()
    
    lazy var topLeftCircle: UIView = {
        let circle = self.circleBuilder(self.innerCircleRadius)
        return circle
    }()
    
    lazy var topRightCircle: UIView = {
        let circle = self.circleBuilder(self.innerCircleRadius)
        return circle
    }()
    
    lazy var bottomLeftCircle: UIView = {
        let circle = self.circleBuilder(self.innerCircleRadius)
        return circle
    }()
    
    lazy var bottomRightCircle: UIView = {
        let circle = self.circleBuilder(self.innerCircleRadius)
        return circle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGrayColor()
        layer.cornerRadius = bounds.size.width/2
        setupViews()
        rotateView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    private func rotateView() {
        UIView.animateWithDuration(0.5, delay: 0, options: .CurveLinear, animations: { () -> Void in
            self.transform = CGAffineTransformRotate(self.transform, CGFloat(M_PI_2))
        }) { (finished) -> Void in
            self.rotateView()
        }
    }
    
    private func circleBuilder(radius: CGFloat) -> UIView {
        let circle = UIView()
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.backgroundColor = .whiteColor()
        circle.layer.cornerRadius = radius / 2
        return circle
    }
    
    private func setupViews() {
        self.containerSquare.addSubview(topLeftCircle)
        self.containerSquare.addSubview(topRightCircle)
        self.containerSquare.addSubview(bottomLeftCircle)
        self.containerSquare.addSubview(bottomRightCircle)
        self.addSubview(containerSquare)
        
        self.addConstraint(NSLayoutConstraint(item: containerSquare,
            attribute: .Width ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Width,
            multiplier: 0,
            constant: circleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: containerSquare,
            attribute: .Height ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Height,
            multiplier: 0,
            constant: circleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: containerSquare,
            attribute: .CenterX ,
            relatedBy: .Equal,
            toItem: self,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0))
        self.addConstraint(NSLayoutConstraint(item: containerSquare,
            attribute: .CenterY ,
            relatedBy: .Equal,
            toItem: self,
            attribute: .CenterY,
            multiplier: 1,
            constant: 0))
        
        self.addConstraint(NSLayoutConstraint(item: topLeftCircle,
            attribute: .Width ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Width,
            multiplier: 1.0,
            constant: innerCircleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: topLeftCircle,
            attribute: .Height ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Height,
            multiplier: 1.0,
            constant: innerCircleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: topLeftCircle,
            attribute: .Left ,
            relatedBy: .Equal,
            toItem: containerSquare,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0))
        
        self.addConstraint(NSLayoutConstraint(item: topLeftCircle,
            attribute: .Top ,
            relatedBy: .Equal,
            toItem: containerSquare,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0))
        
        
        self.addConstraint(NSLayoutConstraint(item: topRightCircle,
            attribute: .Width ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Width,
            multiplier: 1.0,
            constant: innerCircleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: topRightCircle,
            attribute: .Height ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Height,
            multiplier: 1.0,
            constant: innerCircleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: topRightCircle,
            attribute: .Right ,
            relatedBy: .Equal,
            toItem: containerSquare,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0))
        
        self.addConstraint(NSLayoutConstraint(item: topRightCircle,
            attribute: .Top ,
            relatedBy: .Equal,
            toItem: containerSquare,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0))
        
        
        self.addConstraint(NSLayoutConstraint(item: bottomLeftCircle,
            attribute: .Width ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Width,
            multiplier: 1.0,
            constant: innerCircleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: bottomLeftCircle,
            attribute: .Height ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Height,
            multiplier: 1.0,
            constant: innerCircleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: bottomLeftCircle,
            attribute: .Left ,
            relatedBy: .Equal,
            toItem: containerSquare,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0))
        
        self.addConstraint(NSLayoutConstraint(item: bottomLeftCircle,
            attribute: .Bottom ,
            relatedBy: .Equal,
            toItem: containerSquare,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0))
        
        
        self.addConstraint(NSLayoutConstraint(item: bottomRightCircle,
            attribute: .Width ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Width,
            multiplier: 1.0,
            constant: innerCircleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: bottomRightCircle,
            attribute: .Height ,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Height,
            multiplier: 1.0,
            constant: innerCircleRadius))
        
        self.addConstraint(NSLayoutConstraint(item: bottomRightCircle,
            attribute: .Right ,
            relatedBy: .Equal,
            toItem: containerSquare,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0))
        
        self.addConstraint(NSLayoutConstraint(item: bottomRightCircle,
            attribute: .Bottom ,
            relatedBy: .Equal,
            toItem: containerSquare,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

