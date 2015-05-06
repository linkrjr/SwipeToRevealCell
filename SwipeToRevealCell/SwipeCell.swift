//
//  SwipeCell.swift
//  SwipeToRevealCell
//
//  Created by Ronaldo Gomes on 6/05/2015.
//  Copyright (c) 2015 Technophile. All rights reserved.
//

import UIKit

class SwipeCell: UITableViewCell, UIScrollViewDelegate {

    let kRevealWidth:CGFloat = 160.0
    
    var scrollView:UIScrollView! {
        willSet {
            self.scrollView?.removeFromSuperview()
        }
    }
    var foregroundCell:UIView! {
        willSet{
            self.foregroundCell?.removeFromSuperview()
        }
        didSet {
            self.setNeedsLayout()
        }
    }
    var backgroundCell:UIView! {
        willSet{
            self.backgroundCell?.removeFromSuperview()
        }
        didSet {
            self.setNeedsLayout()
        }
    }
    
    var foregroundRevealAmount:Int = 0 {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    var buttonContainerView:UIView!
    var moreButton:UIButton!
    var deleteButton:UIButton!
    
    
    override func layoutSubviews() {
//        self.contentView.frame = self.bounds
//        self.scrollView.contentSize = CGSizeMake(self.contentView.frame.size.width + kRevealWidth, self.scrollView.frame.size.height)
//
        super.layoutSubviews()
        self.layoutScrollView()
        self.layoutBackgroundCell()
        self.layoutForegroundCell()
        
//        self.scrollView.addSubview(self.foregroundCell)
        

//
//        self.repositionButtons()
        
    }

    private func layoutBackgroundCell() {
        let backgroundCellFrame = CGRectMake(CGRectGetWidth(self.bounds) - 160, 0, 160, CGRectGetHeight(self.bounds))
        self.backgroundCell.frame = backgroundCellFrame
        self.scrollView.addSubview(self.backgroundCell)
    }

    private func layoutForegroundCell() {
        let foregroundCellFrame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds))
        self.foregroundCell.backgroundColor = UIColor.whiteColor()
        self.foregroundCell.frame = foregroundCellFrame
        self.scrollView.addSubview(self.foregroundCell)
    }
    
    private func layoutScrollView() {
        let scrollViewFrame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds))
        let scrollViewContentSize = CGSizeMake(CGRectGetWidth(self.bounds) + 160, CGRectGetHeight(self.bounds))
        self.scrollView = UIScrollView(frame: scrollViewFrame)
        self.scrollView.backgroundColor = UIColor.whiteColor()
        self.scrollView.contentSize = scrollViewContentSize
        self.scrollView.delegate = self
        self.scrollView.showsHorizontalScrollIndicator = false
        self.contentView.addSubview(self.scrollView)
    }

//    private func repositionButtons() {
//        var frame = self.buttonContainerView.frame
//        frame.origin.x = self.contentView.frame.size.width - kRevealWidth + self.scrollView.contentOffset.x
//        self.buttonContainerView.frame = frame
//    }
    

}
