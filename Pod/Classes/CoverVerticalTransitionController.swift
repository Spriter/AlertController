//
//  CoverVerticalTransitionController.swift
//  AlertControllerSample
//
//  Created by Marcel Dittmann on 25.02.16.
//  Copyright © 2016 blowfishlab. All rights reserved.
//

import UIKit

class CoverVerticalTransitionController: UIViewController, AlertTransitionController, UIViewControllerAnimatedTransitioning {
    
    private var mode: AlertTransitionControllerMode;
    
    required init(mode: AlertTransitionControllerMode) {
        
        self.mode = mode;
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        
        return 1
    }
    
    internal func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        if mode == .Show {
            
            self.animateShowTransition(transitionContext)
            
        } else {
            
            self.animateHideTransition(transitionContext)
        }
    }
    
    private func animateShowTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let containerView = transitionContext.containerView();
        
        let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey) as! AlertController
        toViewController.view.frame = fromViewController!.view.frame
        toViewController.contentWrapper.alpha = 0;
        toViewController.contentWrapper.transform = CGAffineTransformTranslate(toViewController.contentWrapper.transform, 0,toViewController.view.frame.height)
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            
            toViewController.contentWrapper.alpha = 1;
            toViewController.contentWrapper.transform = CGAffineTransformTranslate(toViewController.contentWrapper.transform, 0, -toViewController.view.frame.height)
            toViewController.view.backgroundColor = UIColor(red:0, green:0, blue:0, alpha:0.6)
            containerView!.addSubview(toViewController.view)
            
            }, completion: { (completed) -> Void in
                transitionContext.completeTransition(completed)
                
        })
        
    }
    
    private func animateHideTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey) as! AlertController
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)
        toViewController!.view.frame = fromViewController.view.frame
        
        fromViewController.view.backgroundColor = UIColor(red:1, green:1, blue:1, alpha:0.0)
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            fromViewController.view.alpha = 0;
            fromViewController.view.transform = CGAffineTransformTranslate(fromViewController.view.transform, 0,fromViewController.view.frame.height)
            
            }, completion: { (completed) -> Void in
                fromViewController.view.removeFromSuperview()
                transitionContext.completeTransition(completed)
                
        })
        
    }
}
