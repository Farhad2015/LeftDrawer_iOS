//
//  CustomCorner.swift
//  LeftNavDrawer
//
//  Created by Artificial-Soft Air on 22/12/21.
//

import SwiftUI

//Custom corner shape
struct CustomCorner: Shape {
    var corners: UIRectCorner
    var radious: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radious, height: radious))
        
        return Path(path.cgPath)
    }
}

