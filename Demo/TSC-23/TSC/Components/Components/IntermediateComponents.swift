//
//  IntermediateComponents.swift
//  TSC-23
//
//  Created by KroNick on 22.04.2023.
//

import UIKit

enum IntermediateComponents {
  static let header: BaseComponent<String, UILabel> = BasicComponents.label
    .compConfigured { label, provider in
      label.font = provider.headerFont
    }
  
  static let subHeader: BaseComponent<String, UILabel> = BasicComponents.label
    .compConfigured { label, provider in
      label.font = provider.subHeaderFont
    }
  
  static func stack2<A, B>(left: A, right: B) -> BaseComponent<(A.Props, B.Props), UIStackView>
  where A: Component, B: Component {
    BaseComponent { props in
      { provider in
        let leftView = left.build(props.0)(provider)
        let rightView = right.build(props.1)(provider)
        return UIStackView(arrangedSubviews: [leftView, rightView])
      }
    }
  }
  
  static func row2<A, B>(left: A, right: B) -> BaseComponent<(A.Props, B.Props), UIStackView> where A: Component, B: Component {
    Self.stack2(left: left, right: right).compConfigured { stackView, provider in
      stackView.axis = .horizontal
    }
  }
  
  static func column2<A, B>(top: A, bottom: B) -> BaseComponent<(A.Props, B.Props), UIStackView> where A: Component, B: Component {
    Self.stack2(left: top, right: bottom).compConfigured { stackView, provider in
      stackView.axis = .vertical
    }
  }
  
  
}
