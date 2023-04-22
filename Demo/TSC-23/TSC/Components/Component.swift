//
//  Component.swift
//  TSC-23
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

protocol Component {
  associatedtype Props
  associatedtype View: UIView
  
  var build: (Props) -> (TokensProvider) -> View { get }
}
