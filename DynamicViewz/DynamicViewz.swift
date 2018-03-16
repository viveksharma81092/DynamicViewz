//
//  DynamicViewz.swift
//  DynamicViewz
//
//  Created by Vivek Sharma on 17/03/18.
//  Copyright © 2018 Survive inc. All rights reserved.
//

import Foundation
import  UIKit

class DynamicViewz : UIView {
    
    let colors : [UIColor] = [.red, .orange, .blue, .green, .yellow, .purple, .brown]
    var colorCounter = 0
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()  //5
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
