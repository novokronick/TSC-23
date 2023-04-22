//
//  Themes.swift
//  TSC-23
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

public struct FooProvider: TokensProvider {
  public init() {}

  public var headerFont: UIFont {
    UIFont.boldSystemFont(ofSize: 20)
  }
  
  public var subHeaderFont: UIFont {
    UIFont.systemFont(ofSize: 15)
  }
  
  public var icon: UIImage {
    UIImage()
  }
  
  public var iconSide: CGFloat {
    40
  }
  
  public var bubbleBackground: UIColor {
    UIColor.white
  }
  
  public var headerHeight: CGFloat {
    84
  }
  
  public var cornerRadius: CGFloat {
    20
  }
}
