//
//  FinalComponents.swift
//  TSC-23
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

enum FinalComponents {
  static let compA: BaseComponent<((String, String), ()), UIView> =
    CompositionComponents.overlay(
      content: IntermediateComponents.row2(
        left: IntermediateComponents.column2(
          top: IntermediateComponents.header,
          bottom: IntermediateComponents.subHeader),
        right: BasicComponents.dummy
      )
    ).compConfigured { view, provider in
      view.backgroundColor = .white
      view.layoutMargins = UIEdgeInsets(top: 20, left: 40, bottom: 20, right: 40)
      view.layer.cornerRadius = provider.cornerRadius
    }
  
  static let compB: BaseComponent<(String, ()), UIView> =
  CompositionComponents.overlay(
      content: IntermediateComponents.row2(
        left: IntermediateComponents.header,
        right: BasicComponents.dummy
      )
    ).compConfigured { view, provider in
      view.backgroundColor = .white
      view.layoutMargins = UIEdgeInsets(top: 20, left: 40, bottom: 20, right: 40)
      view.layer.cornerRadius = provider.cornerRadius
    }
  
  static let compC: BaseComponent<((String, String), ()), UIView> = CompositionComponents.overlay(
    content: CompositionComponents.overlay(
      content: IntermediateComponents.row2(
        left: IntermediateComponents.column2(
          top: IntermediateComponents.header,
          bottom: IntermediateComponents.subHeader
        ),
        right: BasicComponents.dummy
      )
    ).compConfigured { view, provider in
      view.backgroundColor = .white
      view.layoutMargins = UIEdgeInsets(top: 20, left: 40, bottom: 20, right: 40)
      view.layer.cornerRadius = provider.cornerRadius
      
      view.layer.shadowColor = UIColor.purple.cgColor
      view.layer.shadowOpacity = 1
      view.layer.shadowRadius = 10
    }
    ).compConfigured { view, provider in
      view.backgroundColor = UIColor.lightGray
      view.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
      view.clipsToBounds = true
    }
}
