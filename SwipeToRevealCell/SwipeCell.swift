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
    
    @IBOutlet var scrollView:UIScrollView!
    @IBOutlet var innerContentView:UIView!

    var buttonContainerView:UIView!
    var moreButton:UIButton!
    var deleteButton:UIButton!
    
    @IBOutlet var nameLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.moreButton = UIButton.buttonWithType(.Custom) as! UIButton
        self.moreButton.titleLabel?.font = UIFont.systemFontOfSize(14.0)
        self.moreButton.backgroundColor = UIColor.grayColor()
        self.moreButton.frame = CGRectMake(0.0 as CGFloat, 0.0 as CGFloat, kRevealWidth / 2, self.contentView.frame.size.height)
        self.moreButton.setTitle("More...", forState: .Normal)

        self.deleteButton = UIButton.buttonWithType(.Custom) as! UIButton
        self.deleteButton.titleLabel?.font = UIFont.systemFontOfSize(14.0)
        self.deleteButton.backgroundColor = UIColor.grayColor()
        self.deleteButton.frame = CGRectMake(self.moreButton.frame.size.width as CGFloat, 0.0 as CGFloat, kRevealWidth / 2, self.contentView.frame.size.height)
        self.deleteButton.setTitle("Delete", forState: .Normal)
        
        self.buttonContainerView = UIView(frame: CGRectMake(0, 0, kRevealWidth, self.moreButton.frame.size.height))
        self.buttonContainerView.addSubview(self.moreButton)
        self.buttonContainerView.addSubview(self.deleteButton)
        
        self.contentView.addSubview(self.buttonContainerView)
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
