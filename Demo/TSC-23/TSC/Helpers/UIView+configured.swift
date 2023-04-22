//
//  File.swift
//  
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

public extension UIView {
  func configured<T: UIView>(_ closure: ((T) -> Void)) -> Self {
    (self as? T).map(closure) ?? { assertionFailure() }()
    return self
  }
}
