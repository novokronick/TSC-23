//
//  TokensProvider.swift
//  TSC-23
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

protocol TokensProvider {
  var headerFont: UIFont { get }
  var subHeaderFont: UIFont { get }
  
  var icon: UIImage { get }
  var iconSide: CGFloat { get }
  
  var bubbleBackground: UIColor { get }
  
  var headerHeight: CGFloat { get }
  
  var cornerRadius: CGFloat { get }
}
