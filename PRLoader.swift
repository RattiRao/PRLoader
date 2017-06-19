//
//  PRLoader.swift
//
//  Created by Ratti on 23/01/17.
//  Copyright © 2017 Ratti. All rights reserved.
//

import UIKit

class PRLoader: NSObject {
    
   static let view : UIView = UIView()
   static let indicator : DGActivityIndicatorView = DGActivityIndicatorView.init(type: .ballClipRotate, tintColor: UIColor.blue, size: 50)
   static func PRload()
    {
        
        
        indicator.frame = CGRect.init(x: 0, y: 0, width: 50, height: 50)
        view.frame = UIApplication.shared.keyWindow!.rootViewController!.view.bounds
        view.backgroundColor = UIColor.clear
        indicator.startAnimating()
        indicator.center = view.center
       // indicator.type = .rotatingTrigons   //To change types of loader
        view.addSubview(indicator)
        UIApplication.shared.keyWindow?.addSubview(view)
    }
    
    static func PRUnload()
    {
        view.removeFromSuperview()
        indicator.removeFromSuperview()
    }

}
